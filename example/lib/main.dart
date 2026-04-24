import 'dart:io';
import 'package:flutter/material.dart';
import 'package:app_info_extractor/app_info_extractor.dart';

void main() {
  runApp(const AppInfoExample());
}

class AppInfoExample extends StatefulWidget {
  const AppInfoExample({super.key});

  @override
  State<AppInfoExample> createState() => _AppInfoExampleState();
}

class _AppInfoExampleState extends State<AppInfoExample> {
  String _displayText =
      'Press the button to extract info (requires valid path).';

  void _extractInfo() {
    // Developers using this example will replace this with their own path
    const path = '/path/to/your/app.apk';

    if (!File(path).existsSync()) {
      setState(() {
        _displayText =
            'Please provide a valid app file path in the code.\nPath checked: $path';
      });
      return;
    }

    try {
      final metadata = AppInfoExtractor.extract(path);

      setState(() {
        _displayText = '''
--- ${metadata.applicationLabel} ---
ID:      ${metadata.applicationId}
Version: ${metadata.versionName}
SDK:     Min ${metadata.minSdkVersion} / Target ${metadata.targetSdkVersion}
Perms:   ${metadata.usesPermissions.length} found
''';
      });
    } catch (e) {
      setState(() {
        _displayText = 'Extraction failed: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Info Extractor Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  _displayText,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 14),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _extractInfo,
                child: const Text('Extract App Metadata'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
