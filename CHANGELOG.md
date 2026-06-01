## 1.1.0

* **Web Platform Compatibility Fix:** Removed `plist_parser` dependency due to its internal reliance on `dart:io`. Swapped it for a lightweight, native XML parser built on `package:xml`, making the entire package 100% compatible with Flutter Web.
* **Smart APK Obfuscation Bypass:** Integrated geometry-based binary header peeking. Successfully extracts launcher icons from APKs even when names are heavily scrambled by resource obfuscators (e.g., AndResGuard).
* **iOS CgBI Decrusher:** Built a pure-Dart in-memory byte repair system to reverse Apple's proprietary visual optimization format (CgBI) back into standard, web-renderable PNG bytes.

## 1.0.0

* Initial release.
* Support for APK (Binary XML + ARSC).
* Support for AAB (Protobuf Manifest + Resources).
* Support for IPA (Binary Plist).
* Smart Icon extraction logic.