import 'dart:typed_data';

enum AppPlatform { android, ios, undefined }

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

  /// Creates a copy of this [AppMetadata] but with the given fields replaced
  /// with the new values.
  AppMetadata copyWith({
    String? file,
    String? applicationLabel,
    String? applicationId,
    String? versionCode,
    String? versionName,
    String? platformBuildVersionName,
    String? platformBuildVersionCode,
    String? compileSdkVersion,
    String? compileSdkVersionCodename,
    String? minSdkVersion,
    String? targetSdkVersion,
    List<String>? applicationLabels,
    List<String>? usesPermissions,
    List<String>? nativeCodes,
    List<String>? locales,
    Uint8List? iconBytes,
    bool? isXmlIcon,
    AppPlatform? platform,
  }) {
    return AppMetadata(
      file: file ?? this.file,
      applicationLabel: applicationLabel ?? this.applicationLabel,
      applicationId: applicationId ?? this.applicationId,
      versionCode: versionCode ?? this.versionCode,
      versionName: versionName ?? this.versionName,
      platformBuildVersionName:
          platformBuildVersionName ?? this.platformBuildVersionName,
      platformBuildVersionCode:
          platformBuildVersionCode ?? this.platformBuildVersionCode,
      compileSdkVersion: compileSdkVersion ?? this.compileSdkVersion,
      compileSdkVersionCodename:
          compileSdkVersionCodename ?? this.compileSdkVersionCodename,
      minSdkVersion: minSdkVersion ?? this.minSdkVersion,
      targetSdkVersion: targetSdkVersion ?? this.targetSdkVersion,
      applicationLabels: applicationLabels ?? this.applicationLabels,
      usesPermissions: usesPermissions ?? this.usesPermissions,
      nativeCodes: nativeCodes ?? this.nativeCodes,
      locales: locales ?? this.locales,
      iconBytes: iconBytes ?? this.iconBytes,
      isXmlIcon: isXmlIcon ?? this.isXmlIcon,
      platform: platform ?? this.platform,
    );
  }

  @override
  String toString() {
    return 'AppMetadata(label: $applicationLabel, id: $applicationId, version: $versionName($versionCode), platform: ${platform.name})';
  }
}
