import 'dart:typed_data';

/// Supported platforms for application metadata extraction.
enum AppPlatform { 
  /// Android platform (APK or AAB files).
  android, 
  
  /// iOS platform (IPA files).
  ios, 
  
  /// Fallback for unknown or unsupported platforms.
  undefined 
}

/// A data model containing extracted metadata from an application file.
class AppMetadata {
  /// The path to the source application file.
  final String file;

  /// The primary human-readable label of the application.
  final String? applicationLabel;

  /// The unique package name or bundle identifier (e.g., com.example.app).
  final String? applicationId;

  /// The internal version code used to distinguish app releases.
  final String? versionCode;

  /// The user-visible version string (e.g., 1.0.0).
  final String? versionName;

  /// The OS version name used to build the application.
  final String? platformBuildVersionName;

  /// The OS version code used to build the application.
  final String? platformBuildVersionCode;

  /// The version of the SDK the application was compiled against.
  final String? compileSdkVersion;

  /// The internal codename of the compilation SDK.
  final String? compileSdkVersionCodename;

  /// The minimum OS version required to run the application.
  final String? minSdkVersion;

  /// The OS version that the application is optimized for.
  final String? targetSdkVersion;

  /// A list of all available application labels (e.g., for different locales).
  final List<String> applicationLabels;

  /// A list of permissions declared in the application manifest.
  final List<String> usesPermissions;

  /// A list of native CPU architectures supported by the application.
  final List<String> nativeCodes;

  /// A list of locales supported by the application.
  final List<String> locales;

  /// The raw bytes of the application icon, if available.
  final Uint8List? iconBytes;

  /// Whether the icon is in XML format (common in modern Android apps).
  final bool isXmlIcon;

  /// The platform the application belongs to.
  final AppPlatform platform;

  /// Creates a new [AppMetadata] instance with the provided fields.
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