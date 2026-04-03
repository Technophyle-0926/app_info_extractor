import 'dart:convert';
import 'package:app_info_extractor/model/app_metadata.dart';
import 'package:plist_parser/plist_parser.dart';

class IpaParser {
  static AppMetadata parseManifest(List<int> bytes, String filePath) {
    String xmlString;
    try {
      xmlString = utf8.decode(bytes);
    } catch (e) {
      xmlString = String.fromCharCodes(bytes);
    }

    final dynamic parsed = PlistParser().parse(xmlString);
    final Map<String, dynamic> plistMap = parsed is Map
        ? Map<String, dynamic>.from(parsed)
        : {};

    return AppMetadata(
      file: filePath,
      applicationId: plistMap['CFBundleIdentifier']?.toString(),
      versionCode: plistMap['CFBundleVersion']?.toString(),
      versionName: plistMap['CFBundleShortVersionString']?.toString(),
      applicationLabel:
          plistMap['CFBundleDisplayName']?.toString() ??
          plistMap['CFBundleName']?.toString(),
      minSdkVersion: plistMap['MinimumOSVersion']?.toString(),

      usesPermissions: plistMap.keys
          .where(
            (key) => key.startsWith('NS') && key.endsWith('UsageDescription'),
          )
          .toList(),
      platform: AppPlatform.ios
    );
  }
}
