import 'dart:typed_data';
import 'package:archive/archive.dart';

class IconExtractor {
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

  static ({Uint8List? bytes, bool isXml}) _huntAndroidIcon(Archive archive) {
    ArchiveFile? bestImage;
    int maxSize = 0;

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
