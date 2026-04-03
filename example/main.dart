import 'dart:io';

import 'package:app_info_extractor/app_info_extractor.dart';
import 'package:flutter/material.dart';

void main() {
  // Replace with a path to a real file for testing
  final path = '';
  
  if (!File(path).existsSync()) {
    debugPrint('Please provide a valid app file path.');
    return;
  }

  try {
    final metadata = AppInfoExtractor.extract(path);
    
    debugPrint('--- ${metadata.applicationLabel} ---');
    debugPrint('ID:      ${metadata.applicationId}');
    debugPrint('Version: ${metadata.versionName}');
    debugPrint('SDK:     Min ${metadata.minSdkVersion} / Target ${metadata.targetSdkVersion}');
    debugPrint('Perms:   ${metadata.usesPermissions.length} found');
    
  } catch (e) {
    debugPrint('Extraction failed: $e');
  }
}