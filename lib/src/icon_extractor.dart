import 'dart:developer';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:image/image.dart' as img;

/// A utility class for locating and extracting application icons from
/// compressed app packages (APK, AAB, or IPA).
class IconExtractor {
  /// Extracts the application icon from the provided [archive].
  ///
  /// Set [isIpa] to true if the archive represents an iOS application.
  /// Returns a record containing the icon [bytes] and a boolean [isXml]
  /// indicating if the icon is a Vector Drawable (common in Android).
  static ({Uint8List? bytes, bool isXml}) extractIcon(
    Archive archive, {
    bool isIpa = false,
  }) {
    if (isIpa) {
      return (bytes: _huntIpaIcon(archive), isXml: false);
    } else {
      return _huntAndroidIcon(archive);
    }
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
  static ({Uint8List? bytes, bool isXml}) _huntAndroidIcon(Archive archive) {
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
}
