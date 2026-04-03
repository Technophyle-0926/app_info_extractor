import 'dart:typed_data';

enum AppPlatform {
  android,
  ios,
  undefined
}

class AppMetadata {
  final String file;
  final String? applicationLabel;
  final String? applicationId;
  final String? versionCode;
  final String? versionName;
  final String? platformBuildVersionName;
  final String? platformBuildVersionCode;
  final String? compileSdkVersion;
  final String? compileSdkVersionCodename;
  final String? minSdkVersion;
  final String? targetSdkVersion;
  final List<String> applicationLabels;
  final List<String> usesPermissions;
  final List<String> nativeCodes;
  final List<String> locales;
  final Uint8List? iconBytes;
  final bool isXmlIcon;
  final AppPlatform platform;

  AppMetadata({
    required this.file,
    this.applicationLabel,
    this.applicationId,
    this.versionCode,
    this.versionName,
    this.platformBuildVersionName,
    this.platformBuildVersionCode,
    this.compileSdkVersion,
    this.compileSdkVersionCodename,
    this.minSdkVersion,
    this.targetSdkVersion,
    this.applicationLabels = const [],
    this.usesPermissions = const [],
    this.nativeCodes = const [],
    this.locales = const [],
    this.iconBytes,
    this.isXmlIcon = false,
    required this.platform,
  });
}