# app_info_extractor

A pure Dart library to extract deep metadata from Android (`.apk`, `.aab`) and iOS (`.ipa`) binaries. 

This package is designed for CI/CD tools, app managers, or developers who need to inspect app bundles without using native Android/iOS tools (like `aapt` or `xcrun`).

## Features

- ✅ **Universal Support**: Works with APK, AAB (Android App Bundle), and IPA.
- ✅ **App Metadata**: Extract Package Name, Version Name, Version Code, and App Label.
- ✅ **SDK Info**: Get Min SDK, Target SDK, and Compile SDK versions.
- ✅ **Permissions**: List all requested permissions (Android) or Usage Descriptions (iOS).
- ✅ **Icon Extraction**: Smartly hunts for the highest resolution PNG/WebP icon or returns raw bytes for Android Vector Drawables.
- ✅ **No Native Dependencies**: Written in 100% pure Dart. Works on Windows, macOS, Linux, and Web (with file upload).

## Usage

```dart
import 'package:app_info_extractor/app_info_extractor.dart';

void main() async {
  final metadata = AppInfoExtractor.extract('path/to/your/app.apk');

  print('App Name: ${metadata.applicationLabel}');
  print('Package: ${metadata.applicationId}');
  print('Version: ${metadata.versionName} (${metadata.versionCode})');

  if (metadata.iconBytes != null) {
    // In Flutter, you can display this immediately:
    // Image.memory(metadata.iconBytes!)
    print('Icon extracted: ${metadata.iconBytes!.length} bytes');
  }
}
```

How Icon Extraction Works
-------------------------

Since modern Android apps use Vector XML icons, this package uses a priority-based hunt:

1.  **Official Pointer**: Resolves the android:icon resource path.
    
2.  **Heuristic Search**: Scans for high-res PNGs in mipmap or drawable folders.
    
3.  **Asset Fallback**: For Flutter apps, it scans the asset bundle for branded logos.
    

Dependencies
------------

*   archive: For ZIP extraction.
    
*   protobuf: For AAB manifest and resource parsing.
    
*   plist\_parser: For iOS Info.plist decoding.

---

---

### 2. The `example/main.dart`
Pub.dev requires an example folder to verify your package. Create a file at `example/main.dart`:

```dart
import 'dart:io';
import 'package:build_info_extractor/build_info_extractor.dart';

void main() {
  // Replace with a path to a real file for testing
  final path = 'test_assets/app-release.apk';
  
  if (!File(path).existsSync()) {
    print('Please provide a valid app file path.');
    return;
  }

  try {
    final metadata = AppInfoExtractor.extract(path);
    
    print('--- ${metadata.applicationLabel} ---');
    print('ID:      ${metadata.applicationId}');
    print('Version: ${metadata.versionName}');
    print('SDK:     Min ${metadata.minSdkVersion} / Target ${metadata.targetSdkVersion}');
    print('Perms:   ${metadata.usesPermissions.length} found');
    
  } catch (e) {
    print('Extraction failed: $e');
  }
}
