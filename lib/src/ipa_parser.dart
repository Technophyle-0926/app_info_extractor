import 'dart:convert';
import 'package:app_info_extractor/src/model/app_metadata.dart';
import 'package:xml/xml.dart';

/// A specialized parser for iOS application packages (IPA).
///
/// This class handles the extraction and decoding of the `Info.plist` file,
/// which contains the primary metadata for an iOS application.
class IpaParser {
  /// Parses the bytes of an `Info.plist` file and returns an [AppMetadata] object.
  ///
  /// The [bytes] are decoded as UTF-8 or character codes, then parsed as an
  /// XML Property List (Plist) using pure Dart. It maps standard iOS keys like
  /// `CFBundleIdentifier` and `MinimumOSVersion` to the unified [AppMetadata] structure.
  static AppMetadata parseManifest(List<int> bytes, String filePath) {
    String xmlString;
    try {
      xmlString = utf8.decode(bytes);
    } catch (e) {
      xmlString = String.fromCharCodes(bytes);
    }

    final Map<String, dynamic> plistMap = _parsePlistXml(xmlString);

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

  /// Helper to convert Plist XML structure into a Dart Map natively.
  static Map<String, dynamic> _parsePlistXml(String xmlString) {
    try {
      final document = XmlDocument.parse(xmlString);
      final plist = document.findElements('plist').firstOrNull;
      if (plist == null) return {};

      final dict = plist.findElements('dict').firstOrNull;
      if (dict == null) return {};

      return _parseDictElement(dict);
    } catch (_) {
      return {};
    }
  }

  static Map<String, dynamic> _parseDictElement(XmlElement dictElement) {
    final Map<String, dynamic> map = {};
    String? currentKey;

    for (final node in dictElement.children.whereType<XmlElement>()) {
      if (node.name.local == 'key') {
        currentKey = node.innerText.trim();
      } else if (currentKey != null) {
        map[currentKey] = _parseValueElement(node);
        currentKey = null;
      }
    }
    return map;
  }

  static dynamic _parseValueElement(XmlElement element) {
    final tagName = element.name.local;
    switch (tagName) {
      case 'string':
        return element.innerText;
      case 'integer':
        return int.tryParse(element.innerText) ?? element.innerText;
      case 'real':
        return double.tryParse(element.innerText) ?? element.innerText;
      case 'true':
        return true;
      case 'false':
        return false;
      case 'dict':
        return _parseDictElement(element);
      case 'array':
        return element.children
            .whereType<XmlElement>()
            .map((e) => _parseValueElement(e))
            .toList();
      default:
        return element.innerText;
    }
  }
}
