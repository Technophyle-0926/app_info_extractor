import 'dart:convert';
import 'dart:typed_data';

import 'package:app_info_extractor/src/model/app_metadata.dart';

/// A parser for the Android Binary XML format used in `AndroidManifest.xml`.
///
/// This class decodes the compiled XML structure, handles string pool extraction,
/// and maps binary attribute types to human-readable strings.
class BinaryXmlParser {
  /// Chunk type identifier for an XML document.
  static const int chunkTypeXml = 0x0003;

  /// Chunk type identifier for the string pool.
  static const int chunkTypeStringPool = 0x0001;

  /// Chunk type identifier for the start of an XML tag.
  static const int chunkTypeXmlStartTag = 0x0102;

  /// Resource type identifier for a reference (e.g., @ref/0x...).
  static const int typeReference = 0x01;

  /// Resource type identifier for a plain string.
  static const int typeString = 0x03;

  /// Resource type identifier for a decimal integer.
  static const int typeIntDec = 0x10;

  /// Resource type identifier for a hexadecimal integer.
  static const int typeIntHex = 0x11;

  /// Resource type identifier for a boolean value.
  static const int typeIntBoolean = 0x12;

  /// Flag indicating the string pool uses UTF-8 encoding.
  static const int utf8Flag = 1 << 8;

  /// Parses the binary [bytes] of an Android Manifest and returns an [AppMetadata] object.
  ///
  /// Requires [filePath] for internal reference in the model. Throws an [Exception]
  /// if the provided bytes do not match the expected Binary XML header.
  static AppMetadata parseManifest(List<int> bytes, String filePath) {
    final byteData = ByteData.view(Uint8List.fromList(bytes).buffer);
    int offset = 0;

    final chunkType = byteData.getUint16(offset, Endian.little);
    if (chunkType != chunkTypeXml) {
      throw Exception('Invalid Binary XML format');
    }
    offset += 8;

    List<String> stringPool = [];

    String? applicationId;
    String? versionCode;
    String? versionName;
    String? compileSdkVersion;
    String? minSdkVersion;
    String? targetSdkVersion;
    String? applicationLabel;
    List<String> usesPermissions = [];

    while (offset < byteData.lengthInBytes) {
      int type = byteData.getUint16(offset, Endian.little);
      int chunkSize = byteData.getUint32(offset + 4, Endian.little);

      if (type == chunkTypeStringPool) {
        stringPool = _parseStringPool(byteData, offset);
      } else if (type == chunkTypeXmlStartTag) {
        int nameIdx = byteData.getUint32(offset + 20, Endian.little);
        String tagName = _getString(stringPool, nameIdx);

        int attributeCount = byteData.getUint16(offset + 28, Endian.little);

        int attributesStart = offset + 36;

        for (int i = 0; i < attributeCount; i++) {
          int attrOffset = attributesStart + (i * 20);

          int attrNameIdx = byteData.getUint32(attrOffset + 4, Endian.little);
          String attrName = _getString(stringPool, attrNameIdx);

          int attrValueType = byteData.getUint8(attrOffset + 15);
          int attrValueData = byteData.getUint32(
            attrOffset + 16,
            Endian.little,
          );

          String attrValue = _getAttributeValue(
            stringPool,
            attrValueType,
            attrValueData,
          );

          if (tagName == 'manifest') {
            if (attrName == 'package') applicationId = attrValue;
            if (attrName == 'versionCode') versionCode = attrValue;
            if (attrName == 'versionName') versionName = attrValue;
            if (attrName == 'compileSdkVersion') compileSdkVersion = attrValue;
          } else if (tagName == 'uses-sdk') {
            if (attrName == 'minSdkVersion') minSdkVersion = attrValue;
            if (attrName == 'targetSdkVersion') targetSdkVersion = attrValue;
          } else if (tagName == 'uses-permission') {
            if (attrName == 'name') usesPermissions.add(attrValue);
          } else if (tagName == 'application') {
            if (attrName == 'label') applicationLabel = attrValue;
          }
        }
      }

      offset += chunkSize;
    }

    return AppMetadata(
        file: filePath,
        applicationId: applicationId,
        versionCode: versionCode,
        versionName: versionName,
        compileSdkVersion: compileSdkVersion,
        minSdkVersion: minSdkVersion,
        targetSdkVersion: targetSdkVersion,
        applicationLabel: applicationLabel,
        usesPermissions: usesPermissions,
        platform: AppPlatform.android);
  }

  /// Retrieves a string from the [pool] using the provided [index].
  static String _getString(List<String> pool, int index) {
    if (index == 0xFFFFFFFF || index >= pool.length) return '';
    return pool[index];
  }

  /// Converts binary attribute data into a formatted string based on its [type].
  static String _getAttributeValue(List<String> pool, int type, int data) {
    switch (type) {
      case typeString:
        return _getString(pool, data);
      case typeIntDec:
        return data.toString();
      case typeIntHex:
        return '0x${data.toRadixString(16)}';
      case typeIntBoolean:
        return data == 0 ? 'false' : 'true';
      case typeReference:
        return '@ref/0x${data.toRadixString(16)}';
      default:
        return data.toString();
    }
  }

  /// Extracts the string pool from the binary XML [byteData] at [chunkOffset].
  static List<String> _parseStringPool(ByteData byteData, int chunkOffset) {
    int stringCount = byteData.getUint32(chunkOffset + 8, Endian.little);
    int flags = byteData.getUint32(chunkOffset + 16, Endian.little);
    int stringsOffset = byteData.getUint32(chunkOffset + 20, Endian.little);
    bool isUtf8 = (flags & utf8Flag) != 0;
    List<String> pool = [];
    int offsetsStart = chunkOffset + 28;
    int stringDataStart = chunkOffset + stringsOffset;

    for (int i = 0; i < stringCount; i++) {
      int stringRelativeOffset = byteData.getUint32(
        offsetsStart + (i * 4),
        Endian.little,
      );
      int currentPos = stringDataStart + stringRelativeOffset;
      pool.add(
        isUtf8
            ? _readUtf8String(byteData, currentPos)
            : _readUtf16String(byteData, currentPos),
      );
    }
    return pool;
  }

  /// Reads a UTF-8 encoded string from [byteData] at the specific [offset].
  static String _readUtf8String(ByteData byteData, int offset) {
    int pos = offset;
    pos += _skipLength(byteData, pos, isUtf8: true);
    pos += _skipLength(byteData, pos, isUtf8: true);
    List<int> stringBytes = [];
    while (byteData.getUint8(pos) != 0x00) {
      stringBytes.add(byteData.getUint8(pos));
      pos++;
    }
    return utf8.decode(stringBytes);
  }

  /// Reads a UTF-16 encoded string from [byteData] at the specific [offset].
  static String _readUtf16String(ByteData byteData, int offset) {
    int pos = offset;
    pos += _skipLength(byteData, pos, isUtf8: false);
    List<int> stringBytes = [];
    while (byteData.getUint16(pos, Endian.little) != 0x0000) {
      stringBytes.add(byteData.getUint8(pos));
      stringBytes.add(byteData.getUint8(pos + 1));
      pos += 2;
    }
    return String.fromCharCodes(
      Uint16List.view(Uint8List.fromList(stringBytes).buffer),
    );
  }

  /// Internal utility to skip the length headers of strings in the pool.
  static int _skipLength(
    ByteData byteData,
    int offset, {
    required bool isUtf8,
  }) {
    if (isUtf8) {
      int val = byteData.getUint8(offset);
      return (val & 0x80) != 0 ? 2 : 1;
    } else {
      int val = byteData.getUint16(offset, Endian.little);
      return (val & 0x8000) != 0 ? 4 : 2;
    }
  }
}
