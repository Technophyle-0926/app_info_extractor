import 'dart:io';

import 'package:app_info_extractor/app_info_extractor.dart';
import 'package:archive/archive.dart';
import 'package:flutter/material.dart';

void main() {
  // Make sure this path points to your actual APK file
  final String apkPath = 'test_assets/app-release.ipa';

  debugPrint('\n--- RUNNING APK X-RAY ---');
  final bytes = File(apkPath).readAsBytesSync();
  final archive = ZipDecoder().decodeBytes(bytes);
  
  for (var file in archive.files) {
    String name = file.name.toLowerCase();
    // Print anything that looks like an icon or is in an image folder
    if (name.contains('mipmap') || name.contains('drawable') || name.contains('icon') || name.contains('launcher')) {
      if (name.endsWith('.png') || name.endsWith('.webp') || name.endsWith('.xml')) {
        debugPrint('- Found: ${file.name} (${file.size} bytes)');
      }
    }
  }
  debugPrint('--- X-RAY COMPLETE ---\n');

  debugPrint('Extracting data from $apkPath...\n');

  try {
    final metadata = AppInfoExtractor.extract(apkPath);

    debugPrint('--- EXTRACTION SUCCESSFUL ---');
    debugPrint('Package Name (ID): ${metadata.applicationId}');
    debugPrint('Version Code:      ${metadata.versionCode}');
    debugPrint('Version Name:      ${metadata.versionName}');
    debugPrint('Min SDK:           ${metadata.minSdkVersion}');
    debugPrint('Target SDK:        ${metadata.targetSdkVersion}');
    debugPrint('App Label Pointer: ${metadata.applicationLabel}');
    debugPrint('\nPermissions Found: ${metadata.usesPermissions.length}');
    debugPrint('Icon Bytes Extracted: ${metadata.iconBytes != null ? metadata.iconBytes!.length.toString() + " bytes" : "None"}');

    // Print the first 5 permissions as a sanity check
    for (var i = 0; i < metadata.usesPermissions.length && i < 5; i++) {
      debugPrint(' - ${metadata.usesPermissions[i]}');
    }
    
  } catch (e, stacktrace) {
    debugPrint('FAILED TO EXTRACT:');
    debugPrint(e.toString());
    debugPrint(stacktrace.toString());
  }
}