import 'dart:convert';
import 'package:app_info_extractor/src/model/app_metadata.dart';
import 'package:plist_parser/plist_parser.dart';

/// A specialized parser for iOS application packages (IPA).
///
/// This class handles the extraction and decoding of the `Info.plist` file,
/// which contains the primary metadata for an iOS application.
class IpaParser {
  /// Parses the bytes of an `Info.plist` file and returns an [AppMetadata] object.
  ///
  /// The [bytes] are decoded as UTF-8 or character codes, then parsed as a
  /// Property List (Plist). It maps standard iOS keys like `CFBundleIdentifier`
  /// and `MinimumOSVersion` to the unified [AppMetadata] structure.
  ///
  /// It also filters the Plist keys to extract privacy permissions (keys starting
  /// with 'NS' and ending with 'UsageDescription').
  static AppMetadata parseManifest(List<int> bytes, String filePath) {
    String xmlString;
    try {
      xmlString = utf8.decode(bytes);
    } catch (e) {
      xmlString = String.fromCharCodes(bytes);
    }

    final dynamic parsed = PlistParser().parse(xmlString);
    final Map<String, dynamic> plistMap =
        parsed is Map ? Map<String, dynamic>.from(parsed) : {};

    return AppMetadata(
        file: filePath,
        applicationId: plistMap['CFBundleIdentifier']?.toString(),
        versionCode: plistMap['CFBundleVersion']?.toString(),
        versionName: plistMap['CFBundleShortVersionString']?.toString(),
        applicationLabel: plistMap['CFBundleDisplayName']?.toString() ??
            plistMap['CFBundleName']?.toString(),
        minSdkVersion: plistMap['MinimumOSVersion']?.toString(),
        usesPermissions: plistMap.keys
            .where(
              (key) => key.startsWith('NS') && key.endsWith('UsageDescription'),
            )
            .toList(),
        platform: AppPlatform.ios);
  }
}
