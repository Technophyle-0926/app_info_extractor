// This is a generated file - do not edit.
//
// Generated from Resources.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stringPoolDescriptor instead')
const StringPool$json = {
  '1': 'StringPool',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `StringPool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringPoolDescriptor =
    $convert.base64Decode('CgpTdHJpbmdQb29sEhIKBGRhdGEYASABKAxSBGRhdGE=');

@$core.Deprecated('Use sourcePositionDescriptor instead')
const SourcePosition$json = {
  '1': 'SourcePosition',
  '2': [
    {'1': 'line_number', '3': 1, '4': 1, '5': 13, '10': 'lineNumber'},
    {'1': 'column_number', '3': 2, '4': 1, '5': 13, '10': 'columnNumber'},
  ],
};

/// Descriptor for `SourcePosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourcePositionDescriptor = $convert.base64Decode(
    'Cg5Tb3VyY2VQb3NpdGlvbhIfCgtsaW5lX251bWJlchgBIAEoDVIKbGluZU51bWJlchIjCg1jb2'
    'x1bW5fbnVtYmVyGAIgASgNUgxjb2x1bW5OdW1iZXI=');

@$core.Deprecated('Use sourceDescriptor instead')
const Source$json = {
  '1': 'Source',
  '2': [
    {'1': 'path_idx', '3': 1, '4': 1, '5': 13, '10': 'pathIdx'},
    {
      '1': 'position',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.SourcePosition',
      '10': 'position'
    },
  ],
};

/// Descriptor for `Source`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourceDescriptor = $convert.base64Decode(
    'CgZTb3VyY2USGQoIcGF0aF9pZHgYASABKA1SB3BhdGhJZHgSMwoIcG9zaXRpb24YAiABKAsyFy'
    '5hYXB0LnBiLlNvdXJjZVBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use toolFingerprintDescriptor instead')
const ToolFingerprint$json = {
  '1': 'ToolFingerprint',
  '2': [
    {'1': 'tool', '3': 1, '4': 1, '5': 9, '10': 'tool'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `ToolFingerprint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toolFingerprintDescriptor = $convert.base64Decode(
    'Cg9Ub29sRmluZ2VycHJpbnQSEgoEdG9vbBgBIAEoCVIEdG9vbBIYCgd2ZXJzaW9uGAIgASgJUg'
    'd2ZXJzaW9u');

@$core.Deprecated('Use dynamicRefTableDescriptor instead')
const DynamicRefTable$json = {
  '1': 'DynamicRefTable',
  '2': [
    {
      '1': 'package_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.PackageId',
      '10': 'packageId'
    },
    {'1': 'package_name', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
  ],
};

/// Descriptor for `DynamicRefTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicRefTableDescriptor = $convert.base64Decode(
    'Cg9EeW5hbWljUmVmVGFibGUSMQoKcGFja2FnZV9pZBgBIAEoCzISLmFhcHQucGIuUGFja2FnZU'
    'lkUglwYWNrYWdlSWQSIQoMcGFja2FnZV9uYW1lGAIgASgJUgtwYWNrYWdlTmFtZQ==');

@$core.Deprecated('Use resourceTableDescriptor instead')
const ResourceTable$json = {
  '1': 'ResourceTable',
  '2': [
    {
      '1': 'source_pool',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.StringPool',
      '10': 'sourcePool'
    },
    {
      '1': 'package',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Package',
      '10': 'package'
    },
    {
      '1': 'overlayable',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Overlayable',
      '10': 'overlayable'
    },
    {
      '1': 'tool_fingerprint',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.ToolFingerprint',
      '10': 'toolFingerprint'
    },
    {
      '1': 'dynamic_ref_table',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.DynamicRefTable',
      '10': 'dynamicRefTable'
    },
  ],
};

/// Descriptor for `ResourceTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceTableDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZVRhYmxlEjQKC3NvdXJjZV9wb29sGAEgASgLMhMuYWFwdC5wYi5TdHJpbmdQb2'
    '9sUgpzb3VyY2VQb29sEioKB3BhY2thZ2UYAiADKAsyEC5hYXB0LnBiLlBhY2thZ2VSB3BhY2th'
    'Z2USNgoLb3ZlcmxheWFibGUYAyADKAsyFC5hYXB0LnBiLk92ZXJsYXlhYmxlUgtvdmVybGF5YW'
    'JsZRJDChB0b29sX2ZpbmdlcnByaW50GAQgAygLMhguYWFwdC5wYi5Ub29sRmluZ2VycHJpbnRS'
    'D3Rvb2xGaW5nZXJwcmludBJEChFkeW5hbWljX3JlZl90YWJsZRgFIAMoCzIYLmFhcHQucGIuRH'
    'luYW1pY1JlZlRhYmxlUg9keW5hbWljUmVmVGFibGU=');

@$core.Deprecated('Use packageIdDescriptor instead')
const PackageId$json = {
  '1': 'PackageId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `PackageId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageIdDescriptor =
    $convert.base64Decode('CglQYWNrYWdlSWQSDgoCaWQYASABKA1SAmlk');

@$core.Deprecated('Use packageDescriptor instead')
const Package$json = {
  '1': 'Package',
  '2': [
    {
      '1': 'package_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.PackageId',
      '10': 'packageId'
    },
    {'1': 'package_name', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'type', '3': 3, '4': 3, '5': 11, '6': '.aapt.pb.Type', '10': 'type'},
  ],
};

/// Descriptor for `Package`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDescriptor = $convert.base64Decode(
    'CgdQYWNrYWdlEjEKCnBhY2thZ2VfaWQYASABKAsyEi5hYXB0LnBiLlBhY2thZ2VJZFIJcGFja2'
    'FnZUlkEiEKDHBhY2thZ2VfbmFtZRgCIAEoCVILcGFja2FnZU5hbWUSIQoEdHlwZRgDIAMoCzIN'
    'LmFhcHQucGIuVHlwZVIEdHlwZQ==');

@$core.Deprecated('Use typeIdDescriptor instead')
const TypeId$json = {
  '1': 'TypeId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `TypeId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeIdDescriptor =
    $convert.base64Decode('CgZUeXBlSWQSDgoCaWQYASABKA1SAmlk');

@$core.Deprecated('Use typeDescriptor instead')
const Type$json = {
  '1': 'Type',
  '2': [
    {
      '1': 'type_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.TypeId',
      '10': 'typeId'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'entry',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Entry',
      '10': 'entry'
    },
  ],
};

/// Descriptor for `Type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeDescriptor = $convert.base64Decode(
    'CgRUeXBlEigKB3R5cGVfaWQYASABKAsyDy5hYXB0LnBiLlR5cGVJZFIGdHlwZUlkEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSJAoFZW50cnkYAyADKAsyDi5hYXB0LnBiLkVudHJ5UgVlbnRyeQ==');

@$core.Deprecated('Use visibilityDescriptor instead')
const Visibility$json = {
  '1': 'Visibility',
  '2': [
    {
      '1': 'level',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.aapt.pb.Visibility.Level',
      '10': 'level'
    },
    {
      '1': 'source',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'staged_api', '3': 4, '4': 1, '5': 8, '10': 'stagedApi'},
  ],
  '4': [Visibility_Level$json],
};

@$core.Deprecated('Use visibilityDescriptor instead')
const Visibility_Level$json = {
  '1': 'Level',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PRIVATE', '2': 1},
    {'1': 'PUBLIC', '2': 2},
  ],
};

/// Descriptor for `Visibility`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visibilityDescriptor = $convert.base64Decode(
    'CgpWaXNpYmlsaXR5Ei8KBWxldmVsGAEgASgOMhkuYWFwdC5wYi5WaXNpYmlsaXR5LkxldmVsUg'
    'VsZXZlbBInCgZzb3VyY2UYAiABKAsyDy5hYXB0LnBiLlNvdXJjZVIGc291cmNlEhgKB2NvbW1l'
    'bnQYAyABKAlSB2NvbW1lbnQSHQoKc3RhZ2VkX2FwaRgEIAEoCFIJc3RhZ2VkQXBpIi0KBUxldm'
    'VsEgsKB1VOS05PV04QABILCgdQUklWQVRFEAESCgoGUFVCTElDEAI=');

@$core.Deprecated('Use allowNewDescriptor instead')
const AllowNew$json = {
  '1': 'AllowNew',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `AllowNew`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allowNewDescriptor = $convert.base64Decode(
    'CghBbGxvd05ldxInCgZzb3VyY2UYASABKAsyDy5hYXB0LnBiLlNvdXJjZVIGc291cmNlEhgKB2'
    'NvbW1lbnQYAiABKAlSB2NvbW1lbnQ=');

@$core.Deprecated('Use overlayableDescriptor instead')
const Overlayable$json = {
  '1': 'Overlayable',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'source',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'actor', '3': 3, '4': 1, '5': 9, '10': 'actor'},
  ],
};

/// Descriptor for `Overlayable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List overlayableDescriptor = $convert.base64Decode(
    'CgtPdmVybGF5YWJsZRISCgRuYW1lGAEgASgJUgRuYW1lEicKBnNvdXJjZRgCIAEoCzIPLmFhcH'
    'QucGIuU291cmNlUgZzb3VyY2USFAoFYWN0b3IYAyABKAlSBWFjdG9y');

@$core.Deprecated('Use overlayableItemDescriptor instead')
const OverlayableItem$json = {
  '1': 'OverlayableItem',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {
      '1': 'policy',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.aapt.pb.OverlayableItem.Policy',
      '10': 'policy'
    },
    {'1': 'overlayable_idx', '3': 4, '4': 1, '5': 13, '10': 'overlayableIdx'},
  ],
  '4': [OverlayableItem_Policy$json],
};

@$core.Deprecated('Use overlayableItemDescriptor instead')
const OverlayableItem_Policy$json = {
  '1': 'Policy',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'PUBLIC', '2': 1},
    {'1': 'SYSTEM', '2': 2},
    {'1': 'VENDOR', '2': 3},
    {'1': 'PRODUCT', '2': 4},
    {'1': 'SIGNATURE', '2': 5},
    {'1': 'ODM', '2': 6},
    {'1': 'OEM', '2': 7},
    {'1': 'ACTOR', '2': 8},
    {'1': 'CONFIG_SIGNATURE', '2': 9},
  ],
};

/// Descriptor for `OverlayableItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List overlayableItemDescriptor = $convert.base64Decode(
    'Cg9PdmVybGF5YWJsZUl0ZW0SJwoGc291cmNlGAEgASgLMg8uYWFwdC5wYi5Tb3VyY2VSBnNvdX'
    'JjZRIYCgdjb21tZW50GAIgASgJUgdjb21tZW50EjcKBnBvbGljeRgDIAMoDjIfLmFhcHQucGIu'
    'T3ZlcmxheWFibGVJdGVtLlBvbGljeVIGcG9saWN5EicKD292ZXJsYXlhYmxlX2lkeBgEIAEoDV'
    'IOb3ZlcmxheWFibGVJZHgihQEKBlBvbGljeRIICgROT05FEAASCgoGUFVCTElDEAESCgoGU1lT'
    'VEVNEAISCgoGVkVORE9SEAMSCwoHUFJPRFVDVBAEEg0KCVNJR05BVFVSRRAFEgcKA09ETRAGEg'
    'cKA09FTRAHEgkKBUFDVE9SEAgSFAoQQ09ORklHX1NJR05BVFVSRRAJ');

@$core.Deprecated('Use stagedIdDescriptor instead')
const StagedId$json = {
  '1': 'StagedId',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'staged_id', '3': 2, '4': 1, '5': 13, '10': 'stagedId'},
  ],
};

/// Descriptor for `StagedId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stagedIdDescriptor = $convert.base64Decode(
    'CghTdGFnZWRJZBInCgZzb3VyY2UYASABKAsyDy5hYXB0LnBiLlNvdXJjZVIGc291cmNlEhsKCX'
    'N0YWdlZF9pZBgCIAEoDVIIc3RhZ2VkSWQ=');

@$core.Deprecated('Use entryIdDescriptor instead')
const EntryId$json = {
  '1': 'EntryId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `EntryId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryIdDescriptor =
    $convert.base64Decode('CgdFbnRyeUlkEg4KAmlkGAEgASgNUgJpZA==');

@$core.Deprecated('Use entryDescriptor instead')
const Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'entry_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.EntryId',
      '10': 'entryId'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'visibility',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Visibility',
      '10': 'visibility'
    },
    {
      '1': 'allow_new',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.AllowNew',
      '10': 'allowNew'
    },
    {
      '1': 'overlayable_item',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.OverlayableItem',
      '10': 'overlayableItem'
    },
    {
      '1': 'config_value',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.ConfigValue',
      '10': 'configValue'
    },
    {
      '1': 'staged_id',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.StagedId',
      '10': 'stagedId'
    },
    {
      '1': 'flag_disabled_config_value',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.ConfigValue',
      '10': 'flagDisabledConfigValue'
    },
  ],
};

/// Descriptor for `Entry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryDescriptor = $convert.base64Decode(
    'CgVFbnRyeRIrCghlbnRyeV9pZBgBIAEoCzIQLmFhcHQucGIuRW50cnlJZFIHZW50cnlJZBISCg'
    'RuYW1lGAIgASgJUgRuYW1lEjMKCnZpc2liaWxpdHkYAyABKAsyEy5hYXB0LnBiLlZpc2liaWxp'
    'dHlSCnZpc2liaWxpdHkSLgoJYWxsb3dfbmV3GAQgASgLMhEuYWFwdC5wYi5BbGxvd05ld1IIYW'
    'xsb3dOZXcSQwoQb3ZlcmxheWFibGVfaXRlbRgFIAEoCzIYLmFhcHQucGIuT3ZlcmxheWFibGVJ'
    'dGVtUg9vdmVybGF5YWJsZUl0ZW0SNwoMY29uZmlnX3ZhbHVlGAYgAygLMhQuYWFwdC5wYi5Db2'
    '5maWdWYWx1ZVILY29uZmlnVmFsdWUSLgoJc3RhZ2VkX2lkGAcgASgLMhEuYWFwdC5wYi5TdGFn'
    'ZWRJZFIIc3RhZ2VkSWQSUQoaZmxhZ19kaXNhYmxlZF9jb25maWdfdmFsdWUYCCADKAsyFC5hYX'
    'B0LnBiLkNvbmZpZ1ZhbHVlUhdmbGFnRGlzYWJsZWRDb25maWdWYWx1ZQ==');

@$core.Deprecated('Use configValueDescriptor instead')
const ConfigValue$json = {
  '1': 'ConfigValue',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Configuration',
      '10': 'config'
    },
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Value',
      '10': 'value'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `ConfigValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configValueDescriptor = $convert.base64Decode(
    'CgtDb25maWdWYWx1ZRIuCgZjb25maWcYASABKAsyFi5hYXB0LnBiLkNvbmZpZ3VyYXRpb25SBm'
    'NvbmZpZxIkCgV2YWx1ZRgCIAEoCzIOLmFhcHQucGIuVmFsdWVSBXZhbHVlSgQIAxAE');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'weak', '3': 3, '4': 1, '5': 8, '10': 'weak'},
    {
      '1': 'item',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Item',
      '9': 0,
      '10': 'item'
    },
    {
      '1': 'compound_value',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.CompoundValue',
      '9': 0,
      '10': 'compoundValue'
    },
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRInCgZzb3VyY2UYASABKAsyDy5hYXB0LnBiLlNvdXJjZVIGc291cmNlEhgKB2NvbW'
    '1lbnQYAiABKAlSB2NvbW1lbnQSEgoEd2VhaxgDIAEoCFIEd2VhaxIjCgRpdGVtGAQgASgLMg0u'
    'YWFwdC5wYi5JdGVtSABSBGl0ZW0SPwoOY29tcG91bmRfdmFsdWUYBSABKAsyFi5hYXB0LnBiLk'
    'NvbXBvdW5kVmFsdWVIAFINY29tcG91bmRWYWx1ZUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use itemDescriptor instead')
const Item$json = {
  '1': 'Item',
  '2': [
    {
      '1': 'ref',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Reference',
      '9': 0,
      '10': 'ref'
    },
    {
      '1': 'str',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.String',
      '9': 0,
      '10': 'str'
    },
    {
      '1': 'raw_str',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.RawString',
      '9': 0,
      '10': 'rawStr'
    },
    {
      '1': 'styled_str',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.StyledString',
      '9': 0,
      '10': 'styledStr'
    },
    {
      '1': 'file',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.FileReference',
      '9': 0,
      '10': 'file'
    },
    {
      '1': 'id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Id',
      '9': 0,
      '10': 'id'
    },
    {
      '1': 'prim',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Primitive',
      '9': 0,
      '10': 'prim'
    },
    {'1': 'flag_status', '3': 8, '4': 1, '5': 13, '10': 'flagStatus'},
    {'1': 'flag_negated', '3': 9, '4': 1, '5': 8, '10': 'flagNegated'},
    {'1': 'flag_name', '3': 10, '4': 1, '5': 9, '10': 'flagName'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEiYKA3JlZhgBIAEoCzISLmFhcHQucGIuUmVmZXJlbmNlSABSA3JlZhIjCgNzdHIYAi'
    'ABKAsyDy5hYXB0LnBiLlN0cmluZ0gAUgNzdHISLQoHcmF3X3N0chgDIAEoCzISLmFhcHQucGIu'
    'UmF3U3RyaW5nSABSBnJhd1N0chI2CgpzdHlsZWRfc3RyGAQgASgLMhUuYWFwdC5wYi5TdHlsZW'
    'RTdHJpbmdIAFIJc3R5bGVkU3RyEiwKBGZpbGUYBSABKAsyFi5hYXB0LnBiLkZpbGVSZWZlcmVu'
    'Y2VIAFIEZmlsZRIdCgJpZBgGIAEoCzILLmFhcHQucGIuSWRIAFICaWQSKAoEcHJpbRgHIAEoCz'
    'ISLmFhcHQucGIuUHJpbWl0aXZlSABSBHByaW0SHwoLZmxhZ19zdGF0dXMYCCABKA1SCmZsYWdT'
    'dGF0dXMSIQoMZmxhZ19uZWdhdGVkGAkgASgIUgtmbGFnTmVnYXRlZBIbCglmbGFnX25hbWUYCi'
    'ABKAlSCGZsYWdOYW1lQgcKBXZhbHVl');

@$core.Deprecated('Use compoundValueDescriptor instead')
const CompoundValue$json = {
  '1': 'CompoundValue',
  '2': [
    {
      '1': 'attr',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Attribute',
      '9': 0,
      '10': 'attr'
    },
    {
      '1': 'style',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Style',
      '9': 0,
      '10': 'style'
    },
    {
      '1': 'styleable',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Styleable',
      '9': 0,
      '10': 'styleable'
    },
    {
      '1': 'array',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Array',
      '9': 0,
      '10': 'array'
    },
    {
      '1': 'plural',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Plural',
      '9': 0,
      '10': 'plural'
    },
    {
      '1': 'macro',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.MacroBody',
      '9': 0,
      '10': 'macro'
    },
    {'1': 'flag_status', '3': 7, '4': 1, '5': 13, '10': 'flagStatus'},
    {'1': 'flag_negated', '3': 8, '4': 1, '5': 8, '10': 'flagNegated'},
    {'1': 'flag_name', '3': 9, '4': 1, '5': 9, '10': 'flagName'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `CompoundValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compoundValueDescriptor = $convert.base64Decode(
    'Cg1Db21wb3VuZFZhbHVlEigKBGF0dHIYASABKAsyEi5hYXB0LnBiLkF0dHJpYnV0ZUgAUgRhdH'
    'RyEiYKBXN0eWxlGAIgASgLMg4uYWFwdC5wYi5TdHlsZUgAUgVzdHlsZRIyCglzdHlsZWFibGUY'
    'AyABKAsyEi5hYXB0LnBiLlN0eWxlYWJsZUgAUglzdHlsZWFibGUSJgoFYXJyYXkYBCABKAsyDi'
    '5hYXB0LnBiLkFycmF5SABSBWFycmF5EikKBnBsdXJhbBgFIAEoCzIPLmFhcHQucGIuUGx1cmFs'
    'SABSBnBsdXJhbBIqCgVtYWNybxgGIAEoCzISLmFhcHQucGIuTWFjcm9Cb2R5SABSBW1hY3JvEh'
    '8KC2ZsYWdfc3RhdHVzGAcgASgNUgpmbGFnU3RhdHVzEiEKDGZsYWdfbmVnYXRlZBgIIAEoCFIL'
    'ZmxhZ05lZ2F0ZWQSGwoJZmxhZ19uYW1lGAkgASgJUghmbGFnTmFtZUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use booleanDescriptor instead')
const Boolean$json = {
  '1': 'Boolean',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

/// Descriptor for `Boolean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanDescriptor =
    $convert.base64Decode('CgdCb29sZWFuEhQKBXZhbHVlGAEgASgIUgV2YWx1ZQ==');

@$core.Deprecated('Use referenceDescriptor instead')
const Reference$json = {
  '1': 'Reference',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.aapt.pb.Reference.Type',
      '10': 'type'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'private', '3': 4, '4': 1, '5': 8, '10': 'private'},
    {
      '1': 'is_dynamic',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Boolean',
      '10': 'isDynamic'
    },
    {'1': 'type_flags', '3': 6, '4': 1, '5': 13, '10': 'typeFlags'},
    {'1': 'allow_raw', '3': 7, '4': 1, '5': 8, '10': 'allowRaw'},
  ],
  '4': [Reference_Type$json],
};

@$core.Deprecated('Use referenceDescriptor instead')
const Reference_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'REFERENCE', '2': 0},
    {'1': 'ATTRIBUTE', '2': 1},
  ],
};

/// Descriptor for `Reference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenceDescriptor = $convert.base64Decode(
    'CglSZWZlcmVuY2USKwoEdHlwZRgBIAEoDjIXLmFhcHQucGIuUmVmZXJlbmNlLlR5cGVSBHR5cG'
    'USDgoCaWQYAiABKA1SAmlkEhIKBG5hbWUYAyABKAlSBG5hbWUSGAoHcHJpdmF0ZRgEIAEoCFIH'
    'cHJpdmF0ZRIvCgppc19keW5hbWljGAUgASgLMhAuYWFwdC5wYi5Cb29sZWFuUglpc0R5bmFtaW'
    'MSHQoKdHlwZV9mbGFncxgGIAEoDVIJdHlwZUZsYWdzEhsKCWFsbG93X3JhdxgHIAEoCFIIYWxs'
    'b3dSYXciJAoEVHlwZRINCglSRUZFUkVOQ0UQABINCglBVFRSSUJVVEUQAQ==');

@$core.Deprecated('Use idDescriptor instead')
const Id$json = {
  '1': 'Id',
};

/// Descriptor for `Id`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idDescriptor = $convert.base64Decode('CgJJZA==');

@$core.Deprecated('Use stringDescriptor instead')
const String$json = {
  '1': 'String',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `String`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringDescriptor =
    $convert.base64Decode('CgZTdHJpbmcSFAoFdmFsdWUYASABKAlSBXZhbHVl');

@$core.Deprecated('Use rawStringDescriptor instead')
const RawString$json = {
  '1': 'RawString',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `RawString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawStringDescriptor =
    $convert.base64Decode('CglSYXdTdHJpbmcSFAoFdmFsdWUYASABKAlSBXZhbHVl');

@$core.Deprecated('Use styledStringDescriptor instead')
const StyledString$json = {
  '1': 'StyledString',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {
      '1': 'span',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.StyledString.Span',
      '10': 'span'
    },
  ],
  '3': [StyledString_Span$json],
};

@$core.Deprecated('Use styledStringDescriptor instead')
const StyledString_Span$json = {
  '1': 'Span',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'first_char', '3': 2, '4': 1, '5': 13, '10': 'firstChar'},
    {'1': 'last_char', '3': 3, '4': 1, '5': 13, '10': 'lastChar'},
  ],
};

/// Descriptor for `StyledString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List styledStringDescriptor = $convert.base64Decode(
    'CgxTdHlsZWRTdHJpbmcSFAoFdmFsdWUYASABKAlSBXZhbHVlEi4KBHNwYW4YAiADKAsyGi5hYX'
    'B0LnBiLlN0eWxlZFN0cmluZy5TcGFuUgRzcGFuGlQKBFNwYW4SEAoDdGFnGAEgASgJUgN0YWcS'
    'HQoKZmlyc3RfY2hhchgCIAEoDVIJZmlyc3RDaGFyEhsKCWxhc3RfY2hhchgDIAEoDVIIbGFzdE'
    'NoYXI=');

@$core.Deprecated('Use fileReferenceDescriptor instead')
const FileReference$json = {
  '1': 'FileReference',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.aapt.pb.FileReference.Type',
      '10': 'type'
    },
  ],
  '4': [FileReference_Type$json],
};

@$core.Deprecated('Use fileReferenceDescriptor instead')
const FileReference_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PNG', '2': 1},
    {'1': 'BINARY_XML', '2': 2},
    {'1': 'PROTO_XML', '2': 3},
  ],
};

/// Descriptor for `FileReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileReferenceDescriptor = $convert.base64Decode(
    'Cg1GaWxlUmVmZXJlbmNlEhIKBHBhdGgYASABKAlSBHBhdGgSLwoEdHlwZRgCIAEoDjIbLmFhcH'
    'QucGIuRmlsZVJlZmVyZW5jZS5UeXBlUgR0eXBlIjsKBFR5cGUSCwoHVU5LTk9XThAAEgcKA1BO'
    'RxABEg4KCkJJTkFSWV9YTUwQAhINCglQUk9UT19YTUwQAw==');

@$core.Deprecated('Use primitiveDescriptor instead')
const Primitive$json = {
  '1': 'Primitive',
  '2': [
    {
      '1': 'null_value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Primitive.NullType',
      '9': 0,
      '10': 'nullValue'
    },
    {
      '1': 'empty_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Primitive.EmptyType',
      '9': 0,
      '10': 'emptyValue'
    },
    {'1': 'float_value', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {
      '1': 'dimension_value',
      '3': 13,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'dimensionValue'
    },
    {
      '1': 'fraction_value',
      '3': 14,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'fractionValue'
    },
    {
      '1': 'int_decimal_value',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'intDecimalValue'
    },
    {
      '1': 'int_hexadecimal_value',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'intHexadecimalValue'
    },
    {
      '1': 'boolean_value',
      '3': 8,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'booleanValue'
    },
    {
      '1': 'color_argb8_value',
      '3': 9,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'colorArgb8Value'
    },
    {
      '1': 'color_rgb8_value',
      '3': 10,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'colorRgb8Value'
    },
    {
      '1': 'color_argb4_value',
      '3': 11,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'colorArgb4Value'
    },
    {
      '1': 'color_rgb4_value',
      '3': 12,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'colorRgb4Value'
    },
    {
      '1': 'dimension_value_deprecated',
      '3': 4,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '9': 0,
      '10': 'dimensionValueDeprecated',
    },
    {
      '1': 'fraction_value_deprecated',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': {'3': true},
      '9': 0,
      '10': 'fractionValueDeprecated',
    },
  ],
  '3': [Primitive_NullType$json, Primitive_EmptyType$json],
  '8': [
    {'1': 'oneof_value'},
  ],
};

@$core.Deprecated('Use primitiveDescriptor instead')
const Primitive_NullType$json = {
  '1': 'NullType',
};

@$core.Deprecated('Use primitiveDescriptor instead')
const Primitive_EmptyType$json = {
  '1': 'EmptyType',
};

/// Descriptor for `Primitive`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List primitiveDescriptor = $convert.base64Decode(
    'CglQcmltaXRpdmUSPAoKbnVsbF92YWx1ZRgBIAEoCzIbLmFhcHQucGIuUHJpbWl0aXZlLk51bG'
    'xUeXBlSABSCW51bGxWYWx1ZRI/CgtlbXB0eV92YWx1ZRgCIAEoCzIcLmFhcHQucGIuUHJpbWl0'
    'aXZlLkVtcHR5VHlwZUgAUgplbXB0eVZhbHVlEiEKC2Zsb2F0X3ZhbHVlGAMgASgCSABSCmZsb2'
    'F0VmFsdWUSKQoPZGltZW5zaW9uX3ZhbHVlGA0gASgNSABSDmRpbWVuc2lvblZhbHVlEicKDmZy'
    'YWN0aW9uX3ZhbHVlGA4gASgNSABSDWZyYWN0aW9uVmFsdWUSLAoRaW50X2RlY2ltYWxfdmFsdW'
    'UYBiABKAVIAFIPaW50RGVjaW1hbFZhbHVlEjQKFWludF9oZXhhZGVjaW1hbF92YWx1ZRgHIAEo'
    'DUgAUhNpbnRIZXhhZGVjaW1hbFZhbHVlEiUKDWJvb2xlYW5fdmFsdWUYCCABKAhIAFIMYm9vbG'
    'VhblZhbHVlEiwKEWNvbG9yX2FyZ2I4X3ZhbHVlGAkgASgNSABSD2NvbG9yQXJnYjhWYWx1ZRIq'
    'ChBjb2xvcl9yZ2I4X3ZhbHVlGAogASgNSABSDmNvbG9yUmdiOFZhbHVlEiwKEWNvbG9yX2FyZ2'
    'I0X3ZhbHVlGAsgASgNSABSD2NvbG9yQXJnYjRWYWx1ZRIqChBjb2xvcl9yZ2I0X3ZhbHVlGAwg'
    'ASgNSABSDmNvbG9yUmdiNFZhbHVlEkIKGmRpbWVuc2lvbl92YWx1ZV9kZXByZWNhdGVkGAQgAS'
    'gCQgIYAUgAUhhkaW1lbnNpb25WYWx1ZURlcHJlY2F0ZWQSQAoZZnJhY3Rpb25fdmFsdWVfZGVw'
    'cmVjYXRlZBgFIAEoAkICGAFIAFIXZnJhY3Rpb25WYWx1ZURlcHJlY2F0ZWQaCgoITnVsbFR5cG'
    'UaCwoJRW1wdHlUeXBlQg0KC29uZW9mX3ZhbHVl');

@$core.Deprecated('Use attributeDescriptor instead')
const Attribute$json = {
  '1': 'Attribute',
  '2': [
    {'1': 'format_flags', '3': 1, '4': 1, '5': 13, '10': 'formatFlags'},
    {'1': 'min_int', '3': 2, '4': 1, '5': 5, '10': 'minInt'},
    {'1': 'max_int', '3': 3, '4': 1, '5': 5, '10': 'maxInt'},
    {
      '1': 'symbol',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Attribute.Symbol',
      '10': 'symbol'
    },
  ],
  '3': [Attribute_Symbol$json],
  '4': [Attribute_FormatFlags$json],
};

@$core.Deprecated('Use attributeDescriptor instead')
const Attribute_Symbol$json = {
  '1': 'Symbol',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {
      '1': 'name',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Reference',
      '10': 'name'
    },
    {'1': 'value', '3': 4, '4': 1, '5': 13, '10': 'value'},
    {'1': 'type', '3': 5, '4': 1, '5': 13, '10': 'type'},
  ],
};

@$core.Deprecated('Use attributeDescriptor instead')
const Attribute_FormatFlags$json = {
  '1': 'FormatFlags',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'ANY', '2': 65535},
    {'1': 'REFERENCE', '2': 1},
    {'1': 'STRING', '2': 2},
    {'1': 'INTEGER', '2': 4},
    {'1': 'BOOLEAN', '2': 8},
    {'1': 'COLOR', '2': 16},
    {'1': 'FLOAT', '2': 32},
    {'1': 'DIMENSION', '2': 64},
    {'1': 'FRACTION', '2': 128},
    {'1': 'ENUM', '2': 65536},
    {'1': 'FLAGS', '2': 131072},
  ],
};

/// Descriptor for `Attribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeDescriptor = $convert.base64Decode(
    'CglBdHRyaWJ1dGUSIQoMZm9ybWF0X2ZsYWdzGAEgASgNUgtmb3JtYXRGbGFncxIXCgdtaW5faW'
    '50GAIgASgFUgZtaW5JbnQSFwoHbWF4X2ludBgDIAEoBVIGbWF4SW50EjEKBnN5bWJvbBgEIAMo'
    'CzIZLmFhcHQucGIuQXR0cmlidXRlLlN5bWJvbFIGc3ltYm9sGp0BCgZTeW1ib2wSJwoGc291cm'
    'NlGAEgASgLMg8uYWFwdC5wYi5Tb3VyY2VSBnNvdXJjZRIYCgdjb21tZW50GAIgASgJUgdjb21t'
    'ZW50EiYKBG5hbWUYAyABKAsyEi5hYXB0LnBiLlJlZmVyZW5jZVIEbmFtZRIUCgV2YWx1ZRgEIA'
    'EoDVIFdmFsdWUSEgoEdHlwZRgFIAEoDVIEdHlwZSKkAQoLRm9ybWF0RmxhZ3MSCAoETk9ORRAA'
    'EgkKA0FOWRD//wMSDQoJUkVGRVJFTkNFEAESCgoGU1RSSU5HEAISCwoHSU5URUdFUhAEEgsKB0'
    'JPT0xFQU4QCBIJCgVDT0xPUhAQEgkKBUZMT0FUECASDQoJRElNRU5TSU9OEEASDQoIRlJBQ1RJ'
    'T04QgAESCgoERU5VTRCAgAQSCwoFRkxBR1MQgIAI');

@$core.Deprecated('Use styleDescriptor instead')
const Style$json = {
  '1': 'Style',
  '2': [
    {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Reference',
      '10': 'parent'
    },
    {
      '1': 'parent_source',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'parentSource'
    },
    {
      '1': 'entry',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Style.Entry',
      '10': 'entry'
    },
  ],
  '3': [Style_Entry$json],
};

@$core.Deprecated('Use styleDescriptor instead')
const Style_Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {
      '1': 'key',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Reference',
      '10': 'key'
    },
    {'1': 'item', '3': 4, '4': 1, '5': 11, '6': '.aapt.pb.Item', '10': 'item'},
  ],
};

/// Descriptor for `Style`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List styleDescriptor = $convert.base64Decode(
    'CgVTdHlsZRIqCgZwYXJlbnQYASABKAsyEi5hYXB0LnBiLlJlZmVyZW5jZVIGcGFyZW50EjQKDX'
    'BhcmVudF9zb3VyY2UYAiABKAsyDy5hYXB0LnBiLlNvdXJjZVIMcGFyZW50U291cmNlEioKBWVu'
    'dHJ5GAMgAygLMhQuYWFwdC5wYi5TdHlsZS5FbnRyeVIFZW50cnkakwEKBUVudHJ5EicKBnNvdX'
    'JjZRgBIAEoCzIPLmFhcHQucGIuU291cmNlUgZzb3VyY2USGAoHY29tbWVudBgCIAEoCVIHY29t'
    'bWVudBIkCgNrZXkYAyABKAsyEi5hYXB0LnBiLlJlZmVyZW5jZVIDa2V5EiEKBGl0ZW0YBCABKA'
    'syDS5hYXB0LnBiLkl0ZW1SBGl0ZW0=');

@$core.Deprecated('Use styleableDescriptor instead')
const Styleable$json = {
  '1': 'Styleable',
  '2': [
    {
      '1': 'entry',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Styleable.Entry',
      '10': 'entry'
    },
  ],
  '3': [Styleable_Entry$json],
};

@$core.Deprecated('Use styleableDescriptor instead')
const Styleable_Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {
      '1': 'attr',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Reference',
      '10': 'attr'
    },
  ],
};

/// Descriptor for `Styleable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List styleableDescriptor = $convert.base64Decode(
    'CglTdHlsZWFibGUSLgoFZW50cnkYASADKAsyGC5hYXB0LnBiLlN0eWxlYWJsZS5FbnRyeVIFZW'
    '50cnkacgoFRW50cnkSJwoGc291cmNlGAEgASgLMg8uYWFwdC5wYi5Tb3VyY2VSBnNvdXJjZRIY'
    'Cgdjb21tZW50GAIgASgJUgdjb21tZW50EiYKBGF0dHIYAyABKAsyEi5hYXB0LnBiLlJlZmVyZW'
    '5jZVIEYXR0cg==');

@$core.Deprecated('Use arrayDescriptor instead')
const Array$json = {
  '1': 'Array',
  '2': [
    {
      '1': 'element',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Array.Element',
      '10': 'element'
    },
  ],
  '3': [Array_Element$json],
};

@$core.Deprecated('Use arrayDescriptor instead')
const Array_Element$json = {
  '1': 'Element',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'item', '3': 3, '4': 1, '5': 11, '6': '.aapt.pb.Item', '10': 'item'},
  ],
};

/// Descriptor for `Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrayDescriptor = $convert.base64Decode(
    'CgVBcnJheRIwCgdlbGVtZW50GAEgAygLMhYuYWFwdC5wYi5BcnJheS5FbGVtZW50UgdlbGVtZW'
    '50Gm8KB0VsZW1lbnQSJwoGc291cmNlGAEgASgLMg8uYWFwdC5wYi5Tb3VyY2VSBnNvdXJjZRIY'
    'Cgdjb21tZW50GAIgASgJUgdjb21tZW50EiEKBGl0ZW0YAyABKAsyDS5hYXB0LnBiLkl0ZW1SBG'
    'l0ZW0=');

@$core.Deprecated('Use pluralDescriptor instead')
const Plural$json = {
  '1': 'Plural',
  '2': [
    {
      '1': 'entry',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.Plural.Entry',
      '10': 'entry'
    },
  ],
  '3': [Plural_Entry$json],
  '4': [Plural_Arity$json],
};

@$core.Deprecated('Use pluralDescriptor instead')
const Plural_Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Source',
      '10': 'source'
    },
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {
      '1': 'arity',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aapt.pb.Plural.Arity',
      '10': 'arity'
    },
    {'1': 'item', '3': 4, '4': 1, '5': 11, '6': '.aapt.pb.Item', '10': 'item'},
  ],
};

@$core.Deprecated('Use pluralDescriptor instead')
const Plural_Arity$json = {
  '1': 'Arity',
  '2': [
    {'1': 'ZERO', '2': 0},
    {'1': 'ONE', '2': 1},
    {'1': 'TWO', '2': 2},
    {'1': 'FEW', '2': 3},
    {'1': 'MANY', '2': 4},
    {'1': 'OTHER', '2': 5},
  ],
};

/// Descriptor for `Plural`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluralDescriptor = $convert.base64Decode(
    'CgZQbHVyYWwSKwoFZW50cnkYASADKAsyFS5hYXB0LnBiLlBsdXJhbC5FbnRyeVIFZW50cnkamg'
    'EKBUVudHJ5EicKBnNvdXJjZRgBIAEoCzIPLmFhcHQucGIuU291cmNlUgZzb3VyY2USGAoHY29t'
    'bWVudBgCIAEoCVIHY29tbWVudBIrCgVhcml0eRgDIAEoDjIVLmFhcHQucGIuUGx1cmFsLkFyaX'
    'R5UgVhcml0eRIhCgRpdGVtGAQgASgLMg0uYWFwdC5wYi5JdGVtUgRpdGVtIkEKBUFyaXR5EggK'
    'BFpFUk8QABIHCgNPTkUQARIHCgNUV08QAhIHCgNGRVcQAxIICgRNQU5ZEAQSCQoFT1RIRVIQBQ'
    '==');

@$core.Deprecated('Use xmlNodeDescriptor instead')
const XmlNode$json = {
  '1': 'XmlNode',
  '2': [
    {
      '1': 'element',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.XmlElement',
      '9': 0,
      '10': 'element'
    },
    {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {
      '1': 'source',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.SourcePosition',
      '10': 'source'
    },
  ],
  '8': [
    {'1': 'node'},
  ],
};

/// Descriptor for `XmlNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xmlNodeDescriptor = $convert.base64Decode(
    'CgdYbWxOb2RlEi8KB2VsZW1lbnQYASABKAsyEy5hYXB0LnBiLlhtbEVsZW1lbnRIAFIHZWxlbW'
    'VudBIUCgR0ZXh0GAIgASgJSABSBHRleHQSLwoGc291cmNlGAMgASgLMhcuYWFwdC5wYi5Tb3Vy'
    'Y2VQb3NpdGlvblIGc291cmNlQgYKBG5vZGU=');

@$core.Deprecated('Use xmlElementDescriptor instead')
const XmlElement$json = {
  '1': 'XmlElement',
  '2': [
    {
      '1': 'namespace_declaration',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.XmlNamespace',
      '10': 'namespaceDeclaration'
    },
    {'1': 'namespace_uri', '3': 2, '4': 1, '5': 9, '10': 'namespaceUri'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'attribute',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.XmlAttribute',
      '10': 'attribute'
    },
    {
      '1': 'child',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.XmlNode',
      '10': 'child'
    },
  ],
};

/// Descriptor for `XmlElement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xmlElementDescriptor = $convert.base64Decode(
    'CgpYbWxFbGVtZW50EkoKFW5hbWVzcGFjZV9kZWNsYXJhdGlvbhgBIAMoCzIVLmFhcHQucGIuWG'
    '1sTmFtZXNwYWNlUhRuYW1lc3BhY2VEZWNsYXJhdGlvbhIjCg1uYW1lc3BhY2VfdXJpGAIgASgJ'
    'UgxuYW1lc3BhY2VVcmkSEgoEbmFtZRgDIAEoCVIEbmFtZRIzCglhdHRyaWJ1dGUYBCADKAsyFS'
    '5hYXB0LnBiLlhtbEF0dHJpYnV0ZVIJYXR0cmlidXRlEiYKBWNoaWxkGAUgAygLMhAuYWFwdC5w'
    'Yi5YbWxOb2RlUgVjaGlsZA==');

@$core.Deprecated('Use xmlNamespaceDescriptor instead')
const XmlNamespace$json = {
  '1': 'XmlNamespace',
  '2': [
    {'1': 'prefix', '3': 1, '4': 1, '5': 9, '10': 'prefix'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {
      '1': 'source',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.SourcePosition',
      '10': 'source'
    },
  ],
};

/// Descriptor for `XmlNamespace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xmlNamespaceDescriptor = $convert.base64Decode(
    'CgxYbWxOYW1lc3BhY2USFgoGcHJlZml4GAEgASgJUgZwcmVmaXgSEAoDdXJpGAIgASgJUgN1cm'
    'kSLwoGc291cmNlGAMgASgLMhcuYWFwdC5wYi5Tb3VyY2VQb3NpdGlvblIGc291cmNl');

@$core.Deprecated('Use xmlAttributeDescriptor instead')
const XmlAttribute$json = {
  '1': 'XmlAttribute',
  '2': [
    {'1': 'namespace_uri', '3': 1, '4': 1, '5': 9, '10': 'namespaceUri'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {
      '1': 'source',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.SourcePosition',
      '10': 'source'
    },
    {'1': 'resource_id', '3': 5, '4': 1, '5': 13, '10': 'resourceId'},
    {
      '1': 'compiled_item',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.Item',
      '10': 'compiledItem'
    },
  ],
};

/// Descriptor for `XmlAttribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xmlAttributeDescriptor = $convert.base64Decode(
    'CgxYbWxBdHRyaWJ1dGUSIwoNbmFtZXNwYWNlX3VyaRgBIAEoCVIMbmFtZXNwYWNlVXJpEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSFAoFdmFsdWUYAyABKAlSBXZhbHVlEi8KBnNvdXJjZRgEIAEoCzIX'
    'LmFhcHQucGIuU291cmNlUG9zaXRpb25SBnNvdXJjZRIfCgtyZXNvdXJjZV9pZBgFIAEoDVIKcm'
    'Vzb3VyY2VJZBIyCg1jb21waWxlZF9pdGVtGAYgASgLMg0uYWFwdC5wYi5JdGVtUgxjb21waWxl'
    'ZEl0ZW0=');

@$core.Deprecated('Use macroBodyDescriptor instead')
const MacroBody$json = {
  '1': 'MacroBody',
  '2': [
    {'1': 'raw_string', '3': 1, '4': 1, '5': 9, '10': 'rawString'},
    {
      '1': 'style_string',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.StyleString',
      '10': 'styleString'
    },
    {
      '1': 'untranslatable_sections',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.UntranslatableSection',
      '10': 'untranslatableSections'
    },
    {
      '1': 'namespace_stack',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.NamespaceAlias',
      '10': 'namespaceStack'
    },
    {
      '1': 'source',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aapt.pb.SourcePosition',
      '10': 'source'
    },
  ],
};

/// Descriptor for `MacroBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macroBodyDescriptor = $convert.base64Decode(
    'CglNYWNyb0JvZHkSHQoKcmF3X3N0cmluZxgBIAEoCVIJcmF3U3RyaW5nEjcKDHN0eWxlX3N0cm'
    'luZxgCIAEoCzIULmFhcHQucGIuU3R5bGVTdHJpbmdSC3N0eWxlU3RyaW5nElcKF3VudHJhbnNs'
    'YXRhYmxlX3NlY3Rpb25zGAMgAygLMh4uYWFwdC5wYi5VbnRyYW5zbGF0YWJsZVNlY3Rpb25SFn'
    'VudHJhbnNsYXRhYmxlU2VjdGlvbnMSQAoPbmFtZXNwYWNlX3N0YWNrGAQgAygLMhcuYWFwdC5w'
    'Yi5OYW1lc3BhY2VBbGlhc1IObmFtZXNwYWNlU3RhY2sSLwoGc291cmNlGAUgASgLMhcuYWFwdC'
    '5wYi5Tb3VyY2VQb3NpdGlvblIGc291cmNl');

@$core.Deprecated('Use namespaceAliasDescriptor instead')
const NamespaceAlias$json = {
  '1': 'NamespaceAlias',
  '2': [
    {'1': 'prefix', '3': 1, '4': 1, '5': 9, '10': 'prefix'},
    {'1': 'package_name', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'is_private', '3': 3, '4': 1, '5': 8, '10': 'isPrivate'},
  ],
};

/// Descriptor for `NamespaceAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceAliasDescriptor = $convert.base64Decode(
    'Cg5OYW1lc3BhY2VBbGlhcxIWCgZwcmVmaXgYASABKAlSBnByZWZpeBIhCgxwYWNrYWdlX25hbW'
    'UYAiABKAlSC3BhY2thZ2VOYW1lEh0KCmlzX3ByaXZhdGUYAyABKAhSCWlzUHJpdmF0ZQ==');

@$core.Deprecated('Use styleStringDescriptor instead')
const StyleString$json = {
  '1': 'StyleString',
  '2': [
    {'1': 'str', '3': 1, '4': 1, '5': 9, '10': 'str'},
    {
      '1': 'spans',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aapt.pb.StyleString.Span',
      '10': 'spans'
    },
  ],
  '3': [StyleString_Span$json],
};

@$core.Deprecated('Use styleStringDescriptor instead')
const StyleString_Span$json = {
  '1': 'Span',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'start_index', '3': 2, '4': 1, '5': 13, '10': 'startIndex'},
    {'1': 'end_index', '3': 3, '4': 1, '5': 13, '10': 'endIndex'},
  ],
};

/// Descriptor for `StyleString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List styleStringDescriptor = $convert.base64Decode(
    'CgtTdHlsZVN0cmluZxIQCgNzdHIYASABKAlSA3N0chIvCgVzcGFucxgCIAMoCzIZLmFhcHQucG'
    'IuU3R5bGVTdHJpbmcuU3BhblIFc3BhbnMaWAoEU3BhbhISCgRuYW1lGAEgASgJUgRuYW1lEh8K'
    'C3N0YXJ0X2luZGV4GAIgASgNUgpzdGFydEluZGV4EhsKCWVuZF9pbmRleBgDIAEoDVIIZW5kSW'
    '5kZXg=');

@$core.Deprecated('Use untranslatableSectionDescriptor instead')
const UntranslatableSection$json = {
  '1': 'UntranslatableSection',
  '2': [
    {'1': 'start_index', '3': 1, '4': 1, '5': 4, '10': 'startIndex'},
    {'1': 'end_index', '3': 2, '4': 1, '5': 4, '10': 'endIndex'},
  ],
};

/// Descriptor for `UntranslatableSection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List untranslatableSectionDescriptor = $convert.base64Decode(
    'ChVVbnRyYW5zbGF0YWJsZVNlY3Rpb24SHwoLc3RhcnRfaW5kZXgYASABKARSCnN0YXJ0SW5kZX'
    'gSGwoJZW5kX2luZGV4GAIgASgEUghlbmRJbmRleA==');
