// This is a generated file - do not edit.
//
// Generated from Resources.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The visibility of the resource outside of its package.
class Visibility_Level extends $pb.ProtobufEnum {
  /// No visibility was explicitly specified. This is typically treated as private.
  /// The distinction is important when two separate R.java files are generated: a public and
  /// private one. An unknown visibility, in this case, would cause the resource to be omitted
  /// from either R.java.
  static const Visibility_Level UNKNOWN =
      Visibility_Level._(0, _omitEnumNames ? '' : 'UNKNOWN');

  /// A resource was explicitly marked as private. This means the resource can not be accessed
  /// outside of its package unless the @*package:type/entry notation is used (the asterisk being
  /// the private accessor). If two R.java files are generated (private + public), the resource
  /// will only be emitted to the private R.java file.
  static const Visibility_Level PRIVATE =
      Visibility_Level._(1, _omitEnumNames ? '' : 'PRIVATE');

  /// A resource was explicitly marked as public. This means the resource can be accessed
  /// from any package, and is emitted into all R.java files, public and private.
  static const Visibility_Level PUBLIC =
      Visibility_Level._(2, _omitEnumNames ? '' : 'PUBLIC');

  static const $core.List<Visibility_Level> values = <Visibility_Level>[
    UNKNOWN,
    PRIVATE,
    PUBLIC,
  ];

  static final $core.List<Visibility_Level?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Visibility_Level? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Visibility_Level._(super.value, super.name);
}

class OverlayableItem_Policy extends $pb.ProtobufEnum {
  static const OverlayableItem_Policy NONE =
      OverlayableItem_Policy._(0, _omitEnumNames ? '' : 'NONE');
  static const OverlayableItem_Policy PUBLIC =
      OverlayableItem_Policy._(1, _omitEnumNames ? '' : 'PUBLIC');
  static const OverlayableItem_Policy SYSTEM =
      OverlayableItem_Policy._(2, _omitEnumNames ? '' : 'SYSTEM');
  static const OverlayableItem_Policy VENDOR =
      OverlayableItem_Policy._(3, _omitEnumNames ? '' : 'VENDOR');
  static const OverlayableItem_Policy PRODUCT =
      OverlayableItem_Policy._(4, _omitEnumNames ? '' : 'PRODUCT');
  static const OverlayableItem_Policy SIGNATURE =
      OverlayableItem_Policy._(5, _omitEnumNames ? '' : 'SIGNATURE');
  static const OverlayableItem_Policy ODM =
      OverlayableItem_Policy._(6, _omitEnumNames ? '' : 'ODM');
  static const OverlayableItem_Policy OEM =
      OverlayableItem_Policy._(7, _omitEnumNames ? '' : 'OEM');
  static const OverlayableItem_Policy ACTOR =
      OverlayableItem_Policy._(8, _omitEnumNames ? '' : 'ACTOR');
  static const OverlayableItem_Policy CONFIG_SIGNATURE =
      OverlayableItem_Policy._(9, _omitEnumNames ? '' : 'CONFIG_SIGNATURE');

  static const $core.List<OverlayableItem_Policy> values =
      <OverlayableItem_Policy>[
    NONE,
    PUBLIC,
    SYSTEM,
    VENDOR,
    PRODUCT,
    SIGNATURE,
    ODM,
    OEM,
    ACTOR,
    CONFIG_SIGNATURE,
  ];

  static final $core.List<OverlayableItem_Policy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static OverlayableItem_Policy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OverlayableItem_Policy._(super.value, super.name);
}

class Reference_Type extends $pb.ProtobufEnum {
  /// A plain reference (@package:type/entry).
  static const Reference_Type REFERENCE =
      Reference_Type._(0, _omitEnumNames ? '' : 'REFERENCE');

  /// A reference to a theme attribute (?package:type/entry).
  static const Reference_Type ATTRIBUTE =
      Reference_Type._(1, _omitEnumNames ? '' : 'ATTRIBUTE');

  static const $core.List<Reference_Type> values = <Reference_Type>[
    REFERENCE,
    ATTRIBUTE,
  ];

  static final $core.List<Reference_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static Reference_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Reference_Type._(super.value, super.name);
}

class FileReference_Type extends $pb.ProtobufEnum {
  static const FileReference_Type UNKNOWN =
      FileReference_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const FileReference_Type PNG =
      FileReference_Type._(1, _omitEnumNames ? '' : 'PNG');
  static const FileReference_Type BINARY_XML =
      FileReference_Type._(2, _omitEnumNames ? '' : 'BINARY_XML');
  static const FileReference_Type PROTO_XML =
      FileReference_Type._(3, _omitEnumNames ? '' : 'PROTO_XML');

  static const $core.List<FileReference_Type> values = <FileReference_Type>[
    UNKNOWN,
    PNG,
    BINARY_XML,
    PROTO_XML,
  ];

  static final $core.List<FileReference_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FileReference_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileReference_Type._(super.value, super.name);
}

/// Bitmask of formats allowed for an attribute.
class Attribute_FormatFlags extends $pb.ProtobufEnum {
  static const Attribute_FormatFlags NONE =
      Attribute_FormatFlags._(0, _omitEnumNames ? '' : 'NONE');
  static const Attribute_FormatFlags ANY =
      Attribute_FormatFlags._(65535, _omitEnumNames ? '' : 'ANY');
  static const Attribute_FormatFlags REFERENCE =
      Attribute_FormatFlags._(1, _omitEnumNames ? '' : 'REFERENCE');
  static const Attribute_FormatFlags STRING =
      Attribute_FormatFlags._(2, _omitEnumNames ? '' : 'STRING');
  static const Attribute_FormatFlags INTEGER =
      Attribute_FormatFlags._(4, _omitEnumNames ? '' : 'INTEGER');
  static const Attribute_FormatFlags BOOLEAN =
      Attribute_FormatFlags._(8, _omitEnumNames ? '' : 'BOOLEAN');
  static const Attribute_FormatFlags COLOR =
      Attribute_FormatFlags._(16, _omitEnumNames ? '' : 'COLOR');
  static const Attribute_FormatFlags FLOAT =
      Attribute_FormatFlags._(32, _omitEnumNames ? '' : 'FLOAT');
  static const Attribute_FormatFlags DIMENSION =
      Attribute_FormatFlags._(64, _omitEnumNames ? '' : 'DIMENSION');
  static const Attribute_FormatFlags FRACTION =
      Attribute_FormatFlags._(128, _omitEnumNames ? '' : 'FRACTION');
  static const Attribute_FormatFlags ENUM =
      Attribute_FormatFlags._(65536, _omitEnumNames ? '' : 'ENUM');

  /// ENUM and FLAGS cannot BOTH be set.
  static const Attribute_FormatFlags FLAGS =
      Attribute_FormatFlags._(131072, _omitEnumNames ? '' : 'FLAGS');

  static const $core.List<Attribute_FormatFlags> values =
      <Attribute_FormatFlags>[
    NONE,
    ANY,
    REFERENCE,
    STRING,
    INTEGER,
    BOOLEAN,
    COLOR,
    FLOAT,
    DIMENSION,
    FRACTION,
    ENUM,
    FLAGS,
  ];

  static final $core.Map<$core.int, Attribute_FormatFlags> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Attribute_FormatFlags? valueOf($core.int value) => _byValue[value];

  const Attribute_FormatFlags._(super.value, super.name);
}

/// The arity of the plural.
class Plural_Arity extends $pb.ProtobufEnum {
  static const Plural_Arity ZERO =
      Plural_Arity._(0, _omitEnumNames ? '' : 'ZERO');
  static const Plural_Arity ONE =
      Plural_Arity._(1, _omitEnumNames ? '' : 'ONE');
  static const Plural_Arity TWO =
      Plural_Arity._(2, _omitEnumNames ? '' : 'TWO');
  static const Plural_Arity FEW =
      Plural_Arity._(3, _omitEnumNames ? '' : 'FEW');
  static const Plural_Arity MANY =
      Plural_Arity._(4, _omitEnumNames ? '' : 'MANY');
  static const Plural_Arity OTHER =
      Plural_Arity._(5, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<Plural_Arity> values = <Plural_Arity>[
    ZERO,
    ONE,
    TWO,
    FEW,
    MANY,
    OTHER,
  ];

  static final $core.List<Plural_Arity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static Plural_Arity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Plural_Arity._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
