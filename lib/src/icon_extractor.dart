import 'dart:typed_data';
import 'package:archive/archive.dart';

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
    ArchiveFile? bestIcon;
    int maxRes = 0;

    for (var file in archive.files) {
      final name = file.name.toLowerCase();
      if (name.contains('.app/appicon') && name.endsWith('.png')) {
        if (file.size > maxRes) {
          maxRes = file.size;
          bestIcon = file;
        }
      }
    }

    if (bestIcon == null) {
      for (var file in archive.files) {
        final name = file.name.toLowerCase();
        if (name.contains('.app/') &&
            (name.contains('logo') || name.contains('icon')) &&
            name.endsWith('.png')) {
          if (file.size > maxRes) {
            maxRes = file.size;
            bestIcon = file;
          }
        }
      }
    }

    return bestIcon != null
        ? Uint8List.fromList(bestIcon.content as List<int>)
        : null;
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
