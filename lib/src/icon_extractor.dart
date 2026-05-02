import 'dart:developer';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:image/image.dart' as img;

/// Supported filetype for application icon extraction.
enum FileType {
  /// Android APK.
  apk,

  /// iOS IPA.
  ipa,

  /// Android AAB.
  aab
}

/// A utility class for locating and extracting application icons from
/// compressed app packages (APK, AAB, or IPA).
class IconExtractor {
  /// Extracts the application icon from the provided [archive].
  ///
  /// Set [filetype] to true if the archive represents an iOS application.
  /// Returns a record containing the icon [bytes] and a boolean [isXml]
  /// indicating if the icon is a Vector Drawable (common in Android).
  static ({Uint8List? bytes, bool isXml}) extractIcon({
    required Archive archive,
    required FileType filetype,
  }) {
    return switch (filetype) {
      FileType.ipa => (bytes: _huntIpaIcon(archive), isXml: false),
      FileType.aab => _huntAppBundleIcon(archive),
      FileType.apk => _huntApkIcon(archive)
    };
  }

  /// Internal helper to scan an iOS IPA archive for the highest resolution icon.
  ///
  /// Scans specifically for `appicon` naming conventions before falling back
  /// to generic 'icon' or 'logo' patterns in the `.app` directory.
  static Uint8List? _huntIpaIcon(Archive archive) {
    ArchiveFile? targetIcon;

    // Loop through every file in the ZIP
    for (var file in archive.files) {
      // Convert to lowercase to avoid case-sensitivity bugs
      final path = file.name.toLowerCase();
      log("File Size: ${file.size}");

      // THE WILDCARD MATCH
      // Look for a path that starts with Payload, has an .app folder,
      // and ends with the exact icon name you want.
      if (path.startsWith('payload/') &&
          path.contains('.app/') &&
          path.endsWith('appicon60x60@2x.png')) {
        targetIcon = file;
        break; // Found it! Stop searching.
      }
    }

    // Return safely if not found
    if (targetIcon == null) {
      log("Icon not found in this IPA.");
      return null;
    }

    // Decrush and return the Web-Safe PNG
    try {
      final rawBytes = targetIcon.content as List<int>;
      log("Raw Bytes: $rawBytes");
      final safeBytes = decrushApplePng(Uint8List.fromList(rawBytes));
      return safeBytes;
    } catch (e) {
      log("Failed to decrush image: $e");
    }

    return null;
  }

  /// Intercepts and repairs Apple's proprietary CgBI PNG format.
  /// 100% Web-Safe. Does not rely on dart:io.
  static Uint8List? decrushApplePng(Uint8List data) {
    // Verify standard PNG Signature
    if (data.length < 8 ||
        data[0] != 137 ||
        data[1] != 80 ||
        data[2] != 78 ||
        data[3] != 71) {
      return data;
    }

    final reader = ByteData.view(data.buffer);
    int offset = 8;
    bool isCrushed = false;

    List<int> ihdrChunk = [];
    List<int> rawIdatData = [];

    try {
      // Parse the PNG chunks
      while (offset < data.length) {
        int length = reader.getUint32(offset);
        String type =
            String.fromCharCodes(data.sublist(offset + 4, offset + 8));

        if (type == 'CgBI') {
          isCrushed = true; // We hit the proprietary Apple chunk!
        } else if (type == 'IHDR') {
          ihdrChunk = data.sublist(offset, offset + length + 12);
        } else if (type == 'IDAT') {
          rawIdatData.addAll(data.sublist(offset + 8, offset + 8 + length));
        }

        offset += length + 12;
      }

      // If it's a normal PNG, no decrushing is needed
      if (!isCrushed) return data;

      // Calculate the actual Adler-32 Checksum
      // Apple strips this out, but standard Web PNGs require it.
      final uncompressed = Inflate(rawIdatData).getBytes();
      int adler = _calculateAdler32(uncompressed);

      // Reconstruct a valid Zlib compression stream
      List<int> zlibData = [0x78, 0x9C]; // Standard Zlib Header
      zlibData.addAll(rawIdatData); // Apple's raw deflate data
      zlibData.addAll([
        // The actual Adler-32 checksum
        (adler >> 24) & 0xFF,
        (adler >> 16) & 0xFF,
        (adler >> 8) & 0xFF,
        adler & 0xFF
      ]);

      // Build the IDAT payload to calculate the CRC
      List<int> idatPayload = [];
      idatPayload.addAll('IDAT'.codeUnits);
      idatPayload.addAll(zlibData);

      // We calculate the real CRC-32 hash so the decoder doesn't crash!
      int crc = _calculateCrc32(idatPayload);

      // Construct the brand new, web-safe PNG in memory
      final newPng = BytesBuilder();
      newPng.add(data.sublist(0, 8)); // Signature
      newPng.add(ihdrChunk); // IHDR

      // Add IDAT Chunk (Length + Type + Data + CRC)
      final idatLen = ByteData(4)..setUint32(0, zlibData.length);
      newPng.add(idatLen.buffer.asUint8List());
      newPng.add(idatPayload);
      final crcBytes = ByteData(4)..setUint32(0, crc);
      newPng.add(crcBytes.buffer.asUint8List());

      // Add Standard IEND Chunk
      newPng.add([0, 0, 0, 0, 73, 69, 78, 68, 174, 66, 96, 130]);

      // Decode the newly fixed PNG and fix the color channels
      final decodedImage = img.decodeImage(newPng.toBytes());
      if (decodedImage == null) return null;

      // Apple stores pixels as BGRA. We must swap Red and Blue back to RGBA.
      for (var p in decodedImage) {
        final tempRed = p.r;
        p.r = p.b;
        p.b = tempRed;
      }

      return Uint8List.fromList(img.encodePng(decodedImage));
    } catch (e) {
      log("CgBI Decrush failed: $e");
      return null;
    }
  }

  // --- MATHEMATICAL HELPERS ---

  /// Generates the standard CRC-32 hash required by PNG files.
  static int _calculateCrc32(List<int> data) {
    int crc = 0xFFFFFFFF;
    for (int i = 0; i < data.length; i++) {
      crc ^= data[i];
      for (int j = 0; j < 8; j++) {
        crc = (crc & 1) != 0 ? (crc >>> 1) ^ 0xEDB88320 : crc >>> 1;
      }
    }
    return crc ^ 0xFFFFFFFF;
  }

  /// Generates the Adler-32 hash required by Zlib streams.
  static int _calculateAdler32(List<int> data) {
    int s1 = 1;
    int s2 = 0;
    for (int i = 0; i < data.length; i++) {
      s1 = (s1 + data[i]) % 65521;
      s2 = (s2 + s1) % 65521;
    }
    return (s2 << 16) | s1;
  }

  /// Internal helper to scan an Android APK/AAB archive for launcher icons.
  ///
  /// Prioritizes `mipmap` and `drawable` folders for launcher icons. If not found,
  /// it attempts to locate assets within Flutter-specific paths or looks for
  /// large image files as a last resort.
  static ({Uint8List? bytes, bool isXml}) _huntAppBundleIcon(Archive archive) {
    ArchiveFile? bestImage;
    int maxSize = 0;

    // Phase 1: Look for standard mipmap/drawable launcher icons
    for (var file in archive.files) {
      String name = file.name.toLowerCase();
      if ((name.contains('mipmap') || name.contains('drawable')) &&
          (name.endsWith('.png') || name.endsWith('.webp'))) {
        if (name.contains('ic_launcher') || name.contains('icon')) {
          if (file.size > maxSize) {
            maxSize = file.size;
            bestImage = file;
          }
        }
      }
    }

    // Phase 2: Fallback to Flutter assets if standard icons are missing
    if (bestImage == null) {
      for (var file in archive.files) {
        String name = file.name.toLowerCase();

        if (name.contains('flutter_assets/assets/images/') &&
            (name.endsWith('.png') || name.endsWith('.webp'))) {
          if (name.contains('app_icon') ||
              name.contains('app_logo') ||
              name.contains('launcher_icon') ||
              name.contains('brand')) {
            if (file.size > maxSize) {
              maxSize = file.size;
              bestImage = file;
            }
          }
        }
      }
    }

    // Phase 3: Final fallback to the largest image file found over 2KB
    if (bestImage == null) {
      for (var file in archive.files) {
        String name = file.name.toLowerCase();
        if (name.endsWith('.png') || name.endsWith('.webp')) {
          if (file.size > 2000 && file.size > maxSize) {
            maxSize = file.size;
            bestImage = file;
          }
        }
      }
    }

    if (bestImage != null) {
      return (
        bytes: Uint8List.fromList(bestImage.content as List<int>),
        isXml: false,
      );
    }

    return (bytes: null, isXml: false);
  }

  /// Scans an Android APK [archive] to find the most suitable application icon.
  ///
  /// This method employs a three-phase heuristic approach to handle both standard
  /// and obfuscated APK structures:
  ///
  /// 1. **Filtering:** Skips non-files, excessively large assets, and Android
  ///    9-patch images (`.9.png`) which are used for UI stretching rather than icons.
  /// 2. **Phase 1 & 2 (Scoring):** Assigns weights to files based on their path
  ///    and filename. It prioritizes `res/mipmap` over `drawable`, specifically
  ///    looks for `ic_launcher`, and prefers higher density buckets (e.g., `xxxhdpi`).
  /// 3. **Phase 3 (Geometric Rescue):** If no icons are found by name (common in
  ///    obfuscated builds), it performs a binary header check on all square images
  ///    within the `res/` folder to see if they match standard Android icon dimensions.
  ///
  /// Returns a record containing the icon [bytes] and a [isXml] flag.
  static ({Uint8List? bytes, bool isXml}) _huntApkIcon(Archive archive) {
    ArchiveFile? bestNamedIcon;
    int highestScore = -1;

    List<ArchiveFile> perfectlySquareCandidates = [];

    for (var file in archive.files) {
      String name = file.name.toLowerCase();

      // THE STRICT BLOCKER: Basic sanity checks to ensure we are looking at valid image data.
      if (!file.isFile || file.size == 0 || file.size > 250000) continue;
      if (!name.endsWith('.png') && !name.endsWith('.webp')) continue;
      if (name.endsWith('.9.png')) continue;

      int score = 0;
      final fileName = name.split('/').last;

      // PHASE 1: Standard Name Scoring (For non-obfuscated APKs)
      if (name.startsWith('res/')) {
        // Preference for mipmaps (standard for icons) over general drawables
        if (name.contains('mipmap') || name.contains('drawable')) score += 500;

        // Highest weight for standard launcher naming conventions
        if (fileName.contains('ic_launcher') || fileName.contains('app_icon')) {
          score += 5000;
          if (fileName.contains('foreground')) score += 1000;
        } else if (fileName.contains('icon') || fileName.contains('logo')) {
          score += 1000;
        }

        // Density-based boosting (prefer higher resolution)
        if (name.contains('xxxhdpi')) {
          score += 400;
        } else if (name.contains('xxhdpi')) {
          score += 300;
        } else if (name.contains('xhdpi')) {
          score += 200;
        }
      }
      // PHASE 2: Flutter Fallback - Looks for standard Flutter project asset paths
      else if (name.startsWith('assets/flutter_assets/')) {
        if (fileName.contains('app_icon') || fileName.contains('ic_launcher')) {
          score += 4000;
        }
      }

      // Tie-breaker: If scores match, the larger file (higher resolution) wins.
      if (score > 0) {
        int finalScore = (score * 1000) + file.size;
        if (finalScore > highestScore) {
          highestScore = finalScore;
          bestNamedIcon = file;
        }
      }
      // PHASE 3: The Obfuscation Trap (Geometry check)
      // If the file is in 'res/' but has a randomized name (e.g., 'a.png'),
      // check if its dimensions match standard Android icon sizes.
      else if (score == 0 && name.startsWith('res/')) {
        final rawBytes = file.content as List<int>;
        if (_isPerfectAndroidIcon(rawBytes)) {
          perfectlySquareCandidates.add(file);
        }
      }
    }

    // --- DECISION TIME ---
    // Best case: We found a file that looks like an icon by name and path.
    if (bestNamedIcon != null) {
      log("APK Icon Found by Name: ${bestNamedIcon.name}");
      return (
        bytes: Uint8List.fromList(bestNamedIcon.content as List<int>),
        isXml: false,
      );
    }

    // Fallback: Use the largest square candidate found via geometry check.
    if (perfectlySquareCandidates.isNotEmpty) {
      perfectlySquareCandidates.sort((a, b) => b.size.compareTo(a.size));
      log("APK Obfuscated! Rescued via Geometry check: ${perfectlySquareCandidates.first.name}");
      return (
        bytes: Uint8List.fromList(
            perfectlySquareCandidates.first.content as List<int>),
        isXml: false,
      );
    }

    log("APK Icon extraction completely failed. No valid candidates.");
    return (bytes: null, isXml: false);
  }

  /// Validates if a byte array represents a PNG icon suitable for Android.
  ///
  /// This performs a "shallow" check by reading the PNG IHDR chunk directly.
  /// It verifies:
  /// 1. The standard PNG magic numbers.
  /// 2. That the image is a perfect square (width == height).
  /// 3. That the dimensions match standard Android buckets (48, 72, 96, 144, 192, or 512).
  ///
  /// This is extremely efficient as it avoids full image decoding.
  static bool _isPerfectAndroidIcon(List<int> bytes) {
    if (bytes.length < 24) return false;

    // Verify PNG Signature
    if (bytes[0] != 137 || bytes[1] != 80 || bytes[2] != 78 || bytes[3] != 71) {
      return false;
    }

    try {
      final reader = ByteData.view(Uint8List.fromList(bytes).buffer);

      // Width is at offset 16, Height at offset 20 in the IHDR chunk
      final width = reader.getUint32(16);
      final height = reader.getUint32(20);

      if (width != height) return false;

      final validDimensions = [48, 72, 96, 144, 192, 512];
      return validDimensions.contains(width);
    } catch (e) {
      return false;
    }
  }
}
