import 'dart:convert';
import 'dart:typed_data';

class ArscParser {
  static const int chunkTypeTable = 0x0002;
  static const int chunkTypeStringPool = 0x0001;
  static const int chunkTypePackage = 0x0200;
  static const int chunkTypeType = 0x0201;
  static const int utf8Flag = 1 << 8;

  static String? resolveLabel(List<int> bytes, String refPointer) {
    if (!refPointer.startsWith('@ref/0x')) return refPointer;

    int resId = int.parse(refPointer.replaceAll('@ref/0x', ''), radix: 16);
    int targetTypeId = (resId >> 16) & 0xFF;
    int targetEntryId = resId & 0xFFFF;

    final byteData = ByteData.view(Uint8List.fromList(bytes).buffer);
    int offset = 0;

    int type = byteData.getUint16(offset, Endian.little);
    if (type != chunkTypeTable) return null;
    offset += 12;

    List<String> globalStringPool = [];

    while (offset < byteData.lengthInBytes) {
      int chunkType = byteData.getUint16(offset, Endian.little);
      int chunkSize = byteData.getUint32(offset + 4, Endian.little);

      if (chunkType == chunkTypeStringPool) {
        globalStringPool = _parseStringPool(byteData, offset);
      } else if (chunkType == chunkTypePackage) {
        return _parsePackage(
          byteData,
          offset,
          targetTypeId,
          targetEntryId,
          globalStringPool,
        );
      }
      offset += chunkSize;
    }
    return null;
  }

  static String? _parsePackage(
    ByteData byteData,
    int packageOffset,
    int targetTypeId,
    int targetEntryId,
    List<String> globalPool,
  ) {
    int headerSize = byteData.getUint16(packageOffset + 2, Endian.little);
    int packageSize = byteData.getUint32(packageOffset + 4, Endian.little);

    int offset = packageOffset + headerSize;
    int packageEnd = packageOffset + packageSize;

    while (offset < packageEnd) {
      int chunkType = byteData.getUint16(offset, Endian.little);
      int chunkSize = byteData.getUint32(offset + 4, Endian.little);

      if (chunkType == chunkTypeType) {
        int typeId = byteData.getUint8(offset + 8);

        if (typeId == targetTypeId) {
          int entryCount = byteData.getUint32(offset + 12, Endian.little);
          int entriesStart =
              offset + byteData.getUint32(offset + 16, Endian.little);

          if (targetEntryId < entryCount) {
            int typeHeaderSize = byteData.getUint16(offset + 2, Endian.little);
            int entryOffsetPos = offset + typeHeaderSize + (targetEntryId * 4);
            int entryRelativeOffset = byteData.getUint32(
              entryOffsetPos,
              Endian.little,
            );

            if (entryRelativeOffset != 0xFFFFFFFF) {
              int entryAbsOffset = entriesStart + entryRelativeOffset;

              int entrySize = byteData.getUint16(entryAbsOffset, Endian.little);
              int flags = byteData.getUint16(entryAbsOffset + 2, Endian.little);

              if ((flags & 0x0001) == 0) {
                int valueOffset = entryAbsOffset + entrySize;
                int dataType = byteData.getUint8(valueOffset + 3);
                int data = byteData.getUint32(valueOffset + 4, Endian.little);

                if (dataType == 0x03) {
                  return globalPool[data];
                }
              }
            }
          }
        }
      }
      offset += chunkSize;
    }
    return null;
  }

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
