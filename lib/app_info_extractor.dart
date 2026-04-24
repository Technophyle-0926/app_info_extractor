import 'dart:io';
import 'dart:typed_data';

// Internal imports - these are now in src/ to keep the lib/ root clean
import 'package:app_info_extractor/src/aab_parser.dart';
import 'package:app_info_extractor/src/arsc_parser.dart';
import 'package:app_info_extractor/src/binary_xml_parser.dart';
import 'package:app_info_extractor/src/icon_extractor.dart';
import 'package:app_info_extractor/src/ipa_parser.dart';
import 'package:app_info_extractor/src/model/app_metadata.dart';
import 'package:archive/archive.dart';

// EXPORTS: This is what the user will actually be able to use.
// We export the model so they can access the AppMetadata class.
export 'package:app_info_extractor/src/model/app_metadata.dart';

/// The main entry point for extracting metadata from APK, AAB, and IPA files.
class AppInfoExtractor {
  /// Extracts [AppMetadata] from a [Uint8List] of bytes.
  /// Requires the [fileName] (including extension) to determine the format.
  static AppMetadata extractFromBytes(Uint8List bytes, String fileName) {
    final archive = ZipDecoder().decodeBytes(bytes);
    final lowerPath = fileName.toLowerCase();

    if (lowerPath.endsWith('.apk')) {
      return _parseApk(archive, fileName);
    } else if (lowerPath.endsWith('.aab')) {
      return _parseAab(archive, fileName);
    } else if (lowerPath.endsWith('.ipa')) {
      return _parseIpa(archive, fileName);
    } else {
      throw Exception('Unsupported format: $fileName');
    }
  }

  /// Extracts [AppMetadata] from a file at the given [filePath].
  static AppMetadata extract(String filePath) {
    final file = File(filePath);
    if (!file.existsSync()) {
      throw FileSystemException('File not found', filePath);
    }
    final bytes = file.readAsBytesSync();
    return extractFromBytes(bytes, filePath);
  }

  static AppMetadata _parseApk(Archive archive, String filePath) {
    ArchiveFile? manifestFile = archive.findFile('AndroidManifest.xml');
    if (manifestFile == null) {
      throw Exception('Invalid APK: AndroidManifest.xml not found.');
    }

    final manifestBytes = manifestFile.content as List<int>;

    AppMetadata metadata = BinaryXmlParser.parseManifest(
      manifestBytes,
      filePath,
    );

    // Resolve resource-based labels (e.g., @string/app_name)
    if (metadata.applicationLabel != null &&
        metadata.applicationLabel!.startsWith('@ref/0x')) {
      ArchiveFile? arscFile = archive.findFile('resources.arsc');

      if (arscFile != null) {
        final arscBytes = arscFile.content as List<int>;

        String? realAppName = ArscParser.resolveLabel(
          arscBytes,
          metadata.applicationLabel!,
        );

        if (realAppName != null) {
          metadata = metadata.copyWith(applicationLabel: realAppName);
        }
      }
    }

    return metadata;
  }

  static AppMetadata _parseAab(Archive archive, String filePath) {
    ArchiveFile? manifestFile =
        archive.findFile('base/manifest/AndroidManifest.xml');

    if (manifestFile == null) {
      throw Exception(
          'Invalid AAB: base/manifest/AndroidManifest.xml not found.');
    }

    final manifestBytes = manifestFile.content as List<int>;
    AppMetadata metadata = AabParser.parseManifest(manifestBytes, filePath);

    if (metadata.applicationLabel != null &&
        int.tryParse(metadata.applicationLabel!) != null) {
      ArchiveFile? pbFile = archive.findFile('base/resources.pb');

      if (pbFile != null) {
        final pbBytes = pbFile.content as List<int>;

        String? realAppName = AabParser.resolveLabel(
          pbBytes,
          metadata.applicationLabel!,
        );

        final iconResult = IconExtractor.extractIcon(archive, isIpa: false);

        if (realAppName != null) {
          metadata = metadata.copyWith(
            applicationLabel: realAppName,
            iconBytes: iconResult.bytes,
            isXmlIcon: iconResult.isXml,
          );
        }
      }
    }

    return metadata;
  }

  static AppMetadata _parseIpa(Archive archive, String filePath) {
    ArchiveFile? plistFile;
    for (var file in archive.files) {
      if (file.name.startsWith('Payload/') &&
          file.name.endsWith('.app/Info.plist')) {
        plistFile = file;
        break;
      }
    }

    if (plistFile == null) {
      throw Exception('Invalid IPA: Payload/*.app/Info.plist not found.');
    }

    final plistBytes = plistFile.content as List<int>;
    AppMetadata metadata = IpaParser.parseManifest(plistBytes, filePath);

    final iconResult = IconExtractor.extractIcon(archive, isIpa: true);

    return metadata.copyWith(
      iconBytes: iconResult.bytes,
      platform: AppPlatform.ios,
    );
  }
}
