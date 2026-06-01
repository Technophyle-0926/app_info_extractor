## 1.1.0

* **Cross-Platform & Web Compliance:** Refactored core logic to be 100% pure Dart with zero `dart:io` or native platform dependencies. Fully compatible with Flutter Web, iOS, Android, macOS, Windows, and Linux.
* **Smart APK Obfuscation Bypass:** Integrated geometry-based binary header peeking. Successfully extracts launcher icons from APKs even when names are heavily scrambled by resource obfuscators (e.g., AndResGuard).
* **iOS CgBI Decrusher:** Built a pure-Dart in-memory byte repair system to reverse Apple's proprietary visual optimization format (CgBI) back into standard, web-renderable PNG bytes.

## 1.0.0

* Initial release.
* Support for APK (Binary XML + ARSC).
* Support for AAB (Protobuf Manifest + Resources).
* Support for IPA (Binary Plist).
* Smart Icon extraction logic.