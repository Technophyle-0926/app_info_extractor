import 'package:flutter_test/flutter_test.dart';
import 'package:app_info_extractor/app_info_extractor.dart';

void main() {
  group('AppInfoExtractor Base Tests', () {
    test('AppPlatform enum has correct values', () {
      expect(AppPlatform.android.name, 'android');
      expect(AppPlatform.ios.name, 'ios');
      expect(AppPlatform.undefined.name, 'undefined');
    });

    test('AppMetadata copyWith works correctly', () {
      final initialMetadata = AppMetadata(
        file: 'test.apk',
        platform: AppPlatform.android,
        applicationId: 'com.test.app',
      );

      final updatedMetadata = initialMetadata.copyWith(
        applicationLabel: 'Test App',
      );

      // Verify the new field was added
      expect(updatedMetadata.applicationLabel, 'Test App');
      // Verify the old fields were preserved
      expect(updatedMetadata.applicationId, 'com.test.app');
      expect(updatedMetadata.platform, AppPlatform.android);
    });
  });
}