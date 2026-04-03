import 'dart:io';
import 'dart:typed_data';
import 'package:app_info_extractor/aab_parser.dart';
import 'package:app_info_extractor/arsc_parser.dart';
import 'package:app_info_extractor/binary_xml_parser.dart';
import 'package:app_info_extractor/icon_extractor.dart';
import 'package:app_info_extractor/ipa_parser.dart';
import 'package:app_info_extractor/model/app_metadata.dart';
import 'package:archive/archive.dart';

class AppInfoExtractor {
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
      throw Exception('Unsupported format');
    }
  }

  static AppMetadata extract(String filePath) {
    final file = File(filePath);
    final bytes = file.readAsBytesSync();
    return extractFromBytes(bytes, filePath);
  }

  static AppMetadata _parseApk(Archive archive, String filePath) {
    ArchiveFile? manifestFile = archive.findFile('AndroidManifest.xml');
    if (manifestFile == null) throw Exception('Invalid APK: AndroidManifest.xml not found.');

    final manifestBytes = manifestFile.content as List<int>;

    AppMetadata metadata = BinaryXmlParser.parseManifest(
      manifestBytes,
      filePath,
    );

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
          metadata = AppMetadata(
            file: metadata.file,
            applicationId: metadata.applicationId,
            versionCode: metadata.versionCode,
            versionName: metadata.versionName,
            compileSdkVersion: metadata.compileSdkVersion,
            minSdkVersion: metadata.minSdkVersion,
            targetSdkVersion: metadata.targetSdkVersion,
            usesPermissions: metadata.usesPermissions,
            applicationLabel: realAppName,
          );
        }
      }
    }

    return metadata;
  }

  static AppMetadata _parseAab(Archive archive, String filePath) {
    ArchiveFile? manifestFile = archive.findFile(
      'base/manifest/AndroidManifest.xml',
    );

    if (manifestFile == null) {
      throw Exception(
        'Invalid AAB: base/manifest/AndroidManifest.xml not found.',
      );
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
          metadata = AppMetadata(
            file: metadata.file,
            applicationId: metadata.applicationId,
            versionCode: metadata.versionCode,
            versionName: metadata.versionName,
            compileSdkVersion: metadata.compileSdkVersion,
            minSdkVersion: metadata.minSdkVersion,
            targetSdkVersion: metadata.targetSdkVersion,
            usesPermissions: metadata.usesPermissions,
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

    return AppMetadata(
      file: metadata.file,
      applicationId: metadata.applicationId,
      versionCode: metadata.versionCode,
      versionName: metadata.versionName,
      applicationLabel: metadata.applicationLabel,
      minSdkVersion: metadata.minSdkVersion,
      usesPermissions: metadata.usesPermissions,
      iconBytes: iconResult.bytes,
    );
  }
}
