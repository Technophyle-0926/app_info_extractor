import 'package:app_info_extractor/src/model/app_metadata.dart';
import 'package:app_info_extractor/src/generated/Resources.pb.dart' as pb;

class AabParser {
  static AppMetadata parseManifest(List<int> bytes, String filePath) {
    final node = pb.XmlNode.fromBuffer(bytes);

    String applicationId = '';
    String versionCode = '';
    String versionName = '';
    String minSdkVersion = '';
    String targetSdkVersion = '';
    String compileSdkVersion = '';
    String applicationLabel = '';
    List<String> usesPermissions = [];

    if (node.hasElement()) {
      final manifestElement = node.element;

      for (var attr in manifestElement.attribute) {
        if (attr.name == 'package') applicationId = attr.value.toString();
        if (attr.name == 'versionCode') versionCode = attr.value.toString();
        if (attr.name == 'versionName') versionName = attr.value.toString();
        if (attr.name == 'compileSdkVersion') {
          compileSdkVersion = attr.value.toString();
        }
      }

      for (var childNode in manifestElement.child) {
        if (!childNode.hasElement()) continue;

        final childElement = childNode.element;

        if (childElement.name == 'uses-permission') {
          for (var attr in childElement.attribute) {
            if (attr.name == 'name') {
              usesPermissions.add(attr.value.toString());
            }
          }
        } else if (childElement.name == 'uses-sdk') {
          for (var attr in childElement.attribute) {
            if (attr.name == 'minSdkVersion') {
              minSdkVersion = attr.value.toString();
            }
            if (attr.name == 'targetSdkVersion') {
              targetSdkVersion = attr.value.toString();
            }
          }
        } else if (childElement.name == 'application') {
          for (var attr in childElement.attribute) {
            if (attr.name == 'label') {
              if (attr.hasCompiledItem() && attr.compiledItem.hasRef()) {
                applicationLabel = attr.compiledItem.ref.id.toString();
              } else {
                applicationLabel = attr.value.toString();
              }
            }
          }
        }
      }
    }

    return AppMetadata(
        file: filePath,
        applicationId: applicationId.isEmpty ? null : applicationId,
        versionCode: versionCode.isEmpty ? null : versionCode,
        versionName: versionName.isEmpty ? null : versionName,
        compileSdkVersion: compileSdkVersion.isEmpty ? null : compileSdkVersion,
        minSdkVersion: minSdkVersion.isEmpty ? null : minSdkVersion,
        targetSdkVersion: targetSdkVersion.isEmpty ? null : targetSdkVersion,
        applicationLabel: applicationLabel.isEmpty ? null : applicationLabel,
        usesPermissions: usesPermissions,
        platform: AppPlatform.android);
  }

  static String? resolveLabel(List<int> resourcesPbBytes, String refIdStr) {
    int? resId = int.tryParse(refIdStr);

    if (resId == null) return refIdStr;

    int targetPackageId = (resId >> 24) & 0xFF;
    int targetTypeId = (resId >> 16) & 0xFF;
    int targetEntryId = resId & 0xFFFF;

    final table = pb.ResourceTable.fromBuffer(resourcesPbBytes);

    for (var package in table.package) {
      int pId = package.hasPackageId() ? package.packageId.id : 0x7f;
      if (pId != targetPackageId) continue;

      for (var type in package.type) {
        int tId = type.hasTypeId() ? type.typeId.id : 0;
        if (tId != targetTypeId) continue;

        for (var entry in type.entry) {
          int eId = entry.hasEntryId() ? entry.entryId.id : 0;
          if (eId != targetEntryId) continue;

          for (var configValue in entry.configValue) {
            if (configValue.hasValue() && configValue.value.hasItem()) {
              if (configValue.value.item.hasStr()) {
                return configValue.value.item.str.value;
              }
            }
          }
        }
      }
    }
    return null;
  }
}
