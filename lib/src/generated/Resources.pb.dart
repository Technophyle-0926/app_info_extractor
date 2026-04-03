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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Configuration.pb.dart' as $0;
import 'Resources.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'Resources.pbenum.dart';

/// A string pool that wraps the binary form of the C++ class android::ResStringPool.
class StringPool extends $pb.GeneratedMessage {
  factory StringPool({
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  StringPool._();

  factory StringPool.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringPool.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringPool',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPool clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPool copyWith(void Function(StringPool) updates) =>
      super.copyWith((message) => updates(message as StringPool)) as StringPool;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringPool create() => StringPool._();
  @$core.override
  StringPool createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringPool getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringPool>(create);
  static StringPool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

/// The position of a declared entity within a file.
class SourcePosition extends $pb.GeneratedMessage {
  factory SourcePosition({
    $core.int? lineNumber,
    $core.int? columnNumber,
  }) {
    final result = create();
    if (lineNumber != null) result.lineNumber = lineNumber;
    if (columnNumber != null) result.columnNumber = columnNumber;
    return result;
  }

  SourcePosition._();

  factory SourcePosition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SourcePosition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SourcePosition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'lineNumber', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'columnNumber',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SourcePosition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SourcePosition copyWith(void Function(SourcePosition) updates) =>
      super.copyWith((message) => updates(message as SourcePosition))
          as SourcePosition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SourcePosition create() => SourcePosition._();
  @$core.override
  SourcePosition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SourcePosition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SourcePosition>(create);
  static SourcePosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get lineNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set lineNumber($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLineNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearLineNumber() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get columnNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set columnNumber($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColumnNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumnNumber() => $_clearField(2);
}

/// Developer friendly source file information for an entity in the resource table.
class Source extends $pb.GeneratedMessage {
  factory Source({
    $core.int? pathIdx,
    SourcePosition? position,
  }) {
    final result = create();
    if (pathIdx != null) result.pathIdx = pathIdx;
    if (position != null) result.position = position;
    return result;
  }

  Source._();

  factory Source.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Source.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Source',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pathIdx', fieldType: $pb.PbFieldType.OU3)
    ..aOM<SourcePosition>(2, _omitFieldNames ? '' : 'position',
        subBuilder: SourcePosition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Source clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Source copyWith(void Function(Source) updates) =>
      super.copyWith((message) => updates(message as Source)) as Source;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Source create() => Source._();
  @$core.override
  Source createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Source getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Source>(create);
  static Source? _defaultInstance;

  /// The index of the string path within the source string pool of a ResourceTable.
  @$pb.TagNumber(1)
  $core.int get pathIdx => $_getIZ(0);
  @$pb.TagNumber(1)
  set pathIdx($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPathIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearPathIdx() => $_clearField(1);

  @$pb.TagNumber(2)
  SourcePosition get position => $_getN(1);
  @$pb.TagNumber(2)
  set position(SourcePosition value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => $_clearField(2);
  @$pb.TagNumber(2)
  SourcePosition ensurePosition() => $_ensure(1);
}

/// The name and version fingerprint of a build tool.
class ToolFingerprint extends $pb.GeneratedMessage {
  factory ToolFingerprint({
    $core.String? tool,
    $core.String? version,
  }) {
    final result = create();
    if (tool != null) result.tool = tool;
    if (version != null) result.version = version;
    return result;
  }

  ToolFingerprint._();

  factory ToolFingerprint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToolFingerprint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToolFingerprint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tool')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolFingerprint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolFingerprint copyWith(void Function(ToolFingerprint) updates) =>
      super.copyWith((message) => updates(message as ToolFingerprint))
          as ToolFingerprint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolFingerprint create() => ToolFingerprint._();
  @$core.override
  ToolFingerprint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToolFingerprint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToolFingerprint>(create);
  static ToolFingerprint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tool => $_getSZ(0);
  @$pb.TagNumber(1)
  set tool($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTool() => $_has(0);
  @$pb.TagNumber(1)
  void clearTool() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

/// References to non local resources
class DynamicRefTable extends $pb.GeneratedMessage {
  factory DynamicRefTable({
    PackageId? packageId,
    $core.String? packageName,
  }) {
    final result = create();
    if (packageId != null) result.packageId = packageId;
    if (packageName != null) result.packageName = packageName;
    return result;
  }

  DynamicRefTable._();

  factory DynamicRefTable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynamicRefTable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynamicRefTable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<PackageId>(1, _omitFieldNames ? '' : 'packageId',
        subBuilder: PackageId.create)
    ..aOS(2, _omitFieldNames ? '' : 'packageName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicRefTable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicRefTable copyWith(void Function(DynamicRefTable) updates) =>
      super.copyWith((message) => updates(message as DynamicRefTable))
          as DynamicRefTable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicRefTable create() => DynamicRefTable._();
  @$core.override
  DynamicRefTable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DynamicRefTable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynamicRefTable>(create);
  static DynamicRefTable? _defaultInstance;

  @$pb.TagNumber(1)
  PackageId get packageId => $_getN(0);
  @$pb.TagNumber(1)
  set packageId(PackageId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageId() => $_clearField(1);
  @$pb.TagNumber(1)
  PackageId ensurePackageId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => $_clearField(2);
}

/// Top level message representing a resource table.
class ResourceTable extends $pb.GeneratedMessage {
  factory ResourceTable({
    StringPool? sourcePool,
    $core.Iterable<Package>? package,
    $core.Iterable<Overlayable>? overlayable,
    $core.Iterable<ToolFingerprint>? toolFingerprint,
    $core.Iterable<DynamicRefTable>? dynamicRefTable,
  }) {
    final result = create();
    if (sourcePool != null) result.sourcePool = sourcePool;
    if (package != null) result.package.addAll(package);
    if (overlayable != null) result.overlayable.addAll(overlayable);
    if (toolFingerprint != null) result.toolFingerprint.addAll(toolFingerprint);
    if (dynamicRefTable != null) result.dynamicRefTable.addAll(dynamicRefTable);
    return result;
  }

  ResourceTable._();

  factory ResourceTable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceTable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceTable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<StringPool>(1, _omitFieldNames ? '' : 'sourcePool',
        subBuilder: StringPool.create)
    ..pPM<Package>(2, _omitFieldNames ? '' : 'package',
        subBuilder: Package.create)
    ..pPM<Overlayable>(3, _omitFieldNames ? '' : 'overlayable',
        subBuilder: Overlayable.create)
    ..pPM<ToolFingerprint>(4, _omitFieldNames ? '' : 'toolFingerprint',
        subBuilder: ToolFingerprint.create)
    ..pPM<DynamicRefTable>(5, _omitFieldNames ? '' : 'dynamicRefTable',
        subBuilder: DynamicRefTable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceTable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceTable copyWith(void Function(ResourceTable) updates) =>
      super.copyWith((message) => updates(message as ResourceTable))
          as ResourceTable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceTable create() => ResourceTable._();
  @$core.override
  ResourceTable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceTable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceTable>(create);
  static ResourceTable? _defaultInstance;

  /// The string pool containing source paths referenced throughout the resource table. This does
  /// not end up in the final binary ARSC file.
  @$pb.TagNumber(1)
  StringPool get sourcePool => $_getN(0);
  @$pb.TagNumber(1)
  set sourcePool(StringPool value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSourcePool() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourcePool() => $_clearField(1);
  @$pb.TagNumber(1)
  StringPool ensureSourcePool() => $_ensure(0);

  /// Resource definitions corresponding to an Android package.
  @$pb.TagNumber(2)
  $pb.PbList<Package> get package => $_getList(1);

  /// The <overlayable> declarations within the resource table.
  @$pb.TagNumber(3)
  $pb.PbList<Overlayable> get overlayable => $_getList(2);

  /// The version fingerprints of the tools that built the resource table.
  @$pb.TagNumber(4)
  $pb.PbList<ToolFingerprint> get toolFingerprint => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<DynamicRefTable> get dynamicRefTable => $_getList(4);
}

/// A package ID in the range [0x00, 0xff].
class PackageId extends $pb.GeneratedMessage {
  factory PackageId({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  PackageId._();

  factory PackageId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageId copyWith(void Function(PackageId) updates) =>
      super.copyWith((message) => updates(message as PackageId)) as PackageId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageId create() => PackageId._();
  @$core.override
  PackageId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageId>(create);
  static PackageId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// Defines resources for an Android package.
class Package extends $pb.GeneratedMessage {
  factory Package({
    PackageId? packageId,
    $core.String? packageName,
    $core.Iterable<Type>? type,
  }) {
    final result = create();
    if (packageId != null) result.packageId = packageId;
    if (packageName != null) result.packageName = packageName;
    if (type != null) result.type.addAll(type);
    return result;
  }

  Package._();

  factory Package.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Package.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Package',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<PackageId>(1, _omitFieldNames ? '' : 'packageId',
        subBuilder: PackageId.create)
    ..aOS(2, _omitFieldNames ? '' : 'packageName')
    ..pPM<Type>(3, _omitFieldNames ? '' : 'type', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Package clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Package copyWith(void Function(Package) updates) =>
      super.copyWith((message) => updates(message as Package)) as Package;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Package create() => Package._();
  @$core.override
  Package createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Package getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Package>(create);
  static Package? _defaultInstance;

  /// The package ID of this package, in the range [0x00, 0xff].
  /// - ID 0x00 is reserved for shared libraries, or when the ID is assigned at run-time.
  /// - ID 0x01 is reserved for the 'android' package (framework).
  /// - ID range [0x02, 0x7f) is reserved for auto-assignment to shared libraries at run-time.
  /// - ID 0x7f is reserved for the application package.
  /// - IDs > 0x7f are reserved for the application as well and are treated as feature splits.
  /// This may not be set if no ID was assigned.
  @$pb.TagNumber(1)
  PackageId get packageId => $_getN(0);
  @$pb.TagNumber(1)
  set packageId(PackageId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageId() => $_clearField(1);
  @$pb.TagNumber(1)
  PackageId ensurePackageId() => $_ensure(0);

  /// The Java compatible Android package name of the app.
  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => $_clearField(2);

  /// The series of types defined by the package.
  @$pb.TagNumber(3)
  $pb.PbList<Type> get type => $_getList(2);
}

/// A type ID in the range [0x01, 0xff].
class TypeId extends $pb.GeneratedMessage {
  factory TypeId({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TypeId._();

  factory TypeId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TypeId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TypeId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypeId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypeId copyWith(void Function(TypeId) updates) =>
      super.copyWith((message) => updates(message as TypeId)) as TypeId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeId create() => TypeId._();
  @$core.override
  TypeId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TypeId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeId>(create);
  static TypeId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// A set of resources grouped under a common type. Such types include string, layout, xml, dimen,
/// attr, etc. This maps to the second part of a resource identifier in Java (R.type.entry).
class Type extends $pb.GeneratedMessage {
  factory Type({
    TypeId? typeId,
    $core.String? name,
    $core.Iterable<Entry>? entry,
  }) {
    final result = create();
    if (typeId != null) result.typeId = typeId;
    if (name != null) result.name = name;
    if (entry != null) result.entry.addAll(entry);
    return result;
  }

  Type._();

  factory Type.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Type.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Type',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<TypeId>(1, _omitFieldNames ? '' : 'typeId', subBuilder: TypeId.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPM<Entry>(3, _omitFieldNames ? '' : 'entry', subBuilder: Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Type clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Type copyWith(void Function(Type) updates) =>
      super.copyWith((message) => updates(message as Type)) as Type;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Type create() => Type._();
  @$core.override
  Type createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Type getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Type>(create);
  static Type? _defaultInstance;

  /// The ID of the type. This may not be set if no ID was assigned.
  @$pb.TagNumber(1)
  TypeId get typeId => $_getN(0);
  @$pb.TagNumber(1)
  set typeId(TypeId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeId() => $_clearField(1);
  @$pb.TagNumber(1)
  TypeId ensureTypeId() => $_ensure(0);

  /// The name of the type. This corresponds to the 'type' part of a full resource name of the form
  /// package:type/entry. The set of legal type names is listed in Resource.cpp.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// The entries defined for this type.
  @$pb.TagNumber(3)
  $pb.PbList<Entry> get entry => $_getList(2);
}

/// The Visibility of a symbol/entry (public, private, undefined).
class Visibility extends $pb.GeneratedMessage {
  factory Visibility({
    Visibility_Level? level,
    Source? source,
    $core.String? comment,
    $core.bool? stagedApi,
  }) {
    final result = create();
    if (level != null) result.level = level;
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (stagedApi != null) result.stagedApi = stagedApi;
    return result;
  }

  Visibility._();

  factory Visibility.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Visibility.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Visibility',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aE<Visibility_Level>(1, _omitFieldNames ? '' : 'level',
        enumValues: Visibility_Level.values)
    ..aOM<Source>(2, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..aOB(4, _omitFieldNames ? '' : 'stagedApi')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Visibility clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Visibility copyWith(void Function(Visibility) updates) =>
      super.copyWith((message) => updates(message as Visibility)) as Visibility;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Visibility create() => Visibility._();
  @$core.override
  Visibility createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Visibility getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Visibility>(create);
  static Visibility? _defaultInstance;

  @$pb.TagNumber(1)
  Visibility_Level get level => $_getN(0);
  @$pb.TagNumber(1)
  set level(Visibility_Level value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => $_clearField(1);

  /// The path at which this entry's visibility was defined (eg. public.xml).
  @$pb.TagNumber(2)
  Source get source => $_getN(1);
  @$pb.TagNumber(2)
  set source(Source value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);
  @$pb.TagNumber(2)
  Source ensureSource() => $_ensure(1);

  /// The comment associated with the <public> tag.
  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => $_clearField(3);

  /// Indicates that the resource id may change across builds and that the public R.java identifier
  /// for this resource should not be final. This is set to `true` for resources in `staging-group`
  /// tags.
  @$pb.TagNumber(4)
  $core.bool get stagedApi => $_getBF(3);
  @$pb.TagNumber(4)
  set stagedApi($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStagedApi() => $_has(3);
  @$pb.TagNumber(4)
  void clearStagedApi() => $_clearField(4);
}

/// Whether a resource comes from a compile-time overlay and is explicitly allowed to not overlay an
/// existing resource.
class AllowNew extends $pb.GeneratedMessage {
  factory AllowNew({
    Source? source,
    $core.String? comment,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    return result;
  }

  AllowNew._();

  factory AllowNew.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AllowNew.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AllowNew',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllowNew clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllowNew copyWith(void Function(AllowNew) updates) =>
      super.copyWith((message) => updates(message as AllowNew)) as AllowNew;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllowNew create() => AllowNew._();
  @$core.override
  AllowNew createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AllowNew getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllowNew>(create);
  static AllowNew? _defaultInstance;

  /// Where this was defined in source.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comment associated with the declaration.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);
}

/// Represents a set of overlayable resources.
class Overlayable extends $pb.GeneratedMessage {
  factory Overlayable({
    $core.String? name,
    Source? source,
    $core.String? actor,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (source != null) result.source = source;
    if (actor != null) result.actor = actor;
    return result;
  }

  Overlayable._();

  factory Overlayable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Overlayable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Overlayable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Source>(2, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(3, _omitFieldNames ? '' : 'actor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Overlayable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Overlayable copyWith(void Function(Overlayable) updates) =>
      super.copyWith((message) => updates(message as Overlayable))
          as Overlayable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Overlayable create() => Overlayable._();
  @$core.override
  Overlayable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Overlayable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Overlayable>(create);
  static Overlayable? _defaultInstance;

  /// The name of the <overlayable>.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The location of the <overlayable> declaration in the source.
  @$pb.TagNumber(2)
  Source get source => $_getN(1);
  @$pb.TagNumber(2)
  set source(Source value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);
  @$pb.TagNumber(2)
  Source ensureSource() => $_ensure(1);

  /// The component responsible for enabling and disabling overlays targeting this <overlayable>.
  @$pb.TagNumber(3)
  $core.String get actor => $_getSZ(2);
  @$pb.TagNumber(3)
  set actor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActor() => $_has(2);
  @$pb.TagNumber(3)
  void clearActor() => $_clearField(3);
}

/// Represents an overlayable <item> declaration within an <overlayable> tag.
class OverlayableItem extends $pb.GeneratedMessage {
  factory OverlayableItem({
    Source? source,
    $core.String? comment,
    $core.Iterable<OverlayableItem_Policy>? policy,
    $core.int? overlayableIdx,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (policy != null) result.policy.addAll(policy);
    if (overlayableIdx != null) result.overlayableIdx = overlayableIdx;
    return result;
  }

  OverlayableItem._();

  factory OverlayableItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OverlayableItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OverlayableItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..pc<OverlayableItem_Policy>(
        3, _omitFieldNames ? '' : 'policy', $pb.PbFieldType.KE,
        valueOf: OverlayableItem_Policy.valueOf,
        enumValues: OverlayableItem_Policy.values,
        defaultEnumValue: OverlayableItem_Policy.NONE)
    ..aI(4, _omitFieldNames ? '' : 'overlayableIdx',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OverlayableItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OverlayableItem copyWith(void Function(OverlayableItem) updates) =>
      super.copyWith((message) => updates(message as OverlayableItem))
          as OverlayableItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OverlayableItem create() => OverlayableItem._();
  @$core.override
  OverlayableItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OverlayableItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OverlayableItem>(create);
  static OverlayableItem? _defaultInstance;

  /// The location of the <item> declaration in source.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comment associated with the declaration.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// The policy defined by the enclosing <policy> tag of this <item>.
  @$pb.TagNumber(3)
  $pb.PbList<OverlayableItem_Policy> get policy => $_getList(2);

  /// The index into overlayable list that points to the <overlayable> tag that contains
  /// this <item>.
  @$pb.TagNumber(4)
  $core.int get overlayableIdx => $_getIZ(3);
  @$pb.TagNumber(4)
  set overlayableIdx($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOverlayableIdx() => $_has(3);
  @$pb.TagNumber(4)
  void clearOverlayableIdx() => $_clearField(4);
}

/// The staged resource ID definition of a finalized resource.
class StagedId extends $pb.GeneratedMessage {
  factory StagedId({
    Source? source,
    $core.int? stagedId,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (stagedId != null) result.stagedId = stagedId;
    return result;
  }

  StagedId._();

  factory StagedId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StagedId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StagedId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aI(2, _omitFieldNames ? '' : 'stagedId', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StagedId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StagedId copyWith(void Function(StagedId) updates) =>
      super.copyWith((message) => updates(message as StagedId)) as StagedId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StagedId create() => StagedId._();
  @$core.override
  StagedId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StagedId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StagedId>(create);
  static StagedId? _defaultInstance;

  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get stagedId => $_getIZ(1);
  @$pb.TagNumber(2)
  set stagedId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStagedId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStagedId() => $_clearField(2);
}

/// An entry ID in the range [0x0000, 0xffff].
class EntryId extends $pb.GeneratedMessage {
  factory EntryId({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  EntryId._();

  factory EntryId.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntryId.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntryId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntryId clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntryId copyWith(void Function(EntryId) updates) =>
      super.copyWith((message) => updates(message as EntryId)) as EntryId;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntryId create() => EntryId._();
  @$core.override
  EntryId createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntryId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntryId>(create);
  static EntryId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// An entry declaration. An entry has a full resource ID that is the combination of package ID,
/// type ID, and its own entry ID. An entry on its own has no value, but values are defined for
/// various configurations/variants.
class Entry extends $pb.GeneratedMessage {
  factory Entry({
    EntryId? entryId,
    $core.String? name,
    Visibility? visibility,
    AllowNew? allowNew,
    OverlayableItem? overlayableItem,
    $core.Iterable<ConfigValue>? configValue,
    StagedId? stagedId,
    $core.Iterable<ConfigValue>? flagDisabledConfigValue,
  }) {
    final result = create();
    if (entryId != null) result.entryId = entryId;
    if (name != null) result.name = name;
    if (visibility != null) result.visibility = visibility;
    if (allowNew != null) result.allowNew = allowNew;
    if (overlayableItem != null) result.overlayableItem = overlayableItem;
    if (configValue != null) result.configValue.addAll(configValue);
    if (stagedId != null) result.stagedId = stagedId;
    if (flagDisabledConfigValue != null)
      result.flagDisabledConfigValue.addAll(flagDisabledConfigValue);
    return result;
  }

  Entry._();

  factory Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<EntryId>(1, _omitFieldNames ? '' : 'entryId',
        subBuilder: EntryId.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Visibility>(3, _omitFieldNames ? '' : 'visibility',
        subBuilder: Visibility.create)
    ..aOM<AllowNew>(4, _omitFieldNames ? '' : 'allowNew',
        subBuilder: AllowNew.create)
    ..aOM<OverlayableItem>(5, _omitFieldNames ? '' : 'overlayableItem',
        subBuilder: OverlayableItem.create)
    ..pPM<ConfigValue>(6, _omitFieldNames ? '' : 'configValue',
        subBuilder: ConfigValue.create)
    ..aOM<StagedId>(7, _omitFieldNames ? '' : 'stagedId',
        subBuilder: StagedId.create)
    ..pPM<ConfigValue>(8, _omitFieldNames ? '' : 'flagDisabledConfigValue',
        subBuilder: ConfigValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entry copyWith(void Function(Entry) updates) =>
      super.copyWith((message) => updates(message as Entry)) as Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Entry create() => Entry._();
  @$core.override
  Entry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Entry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entry>(create);
  static Entry? _defaultInstance;

  /// The ID of this entry. Together with the package ID and type ID, this forms a full resource ID
  /// of the form 0xPPTTEEEE, where PP is the package ID, TT is the type ID, and EEEE is the entry
  /// ID.
  /// This may not be set if no ID was assigned.
  @$pb.TagNumber(1)
  EntryId get entryId => $_getN(0);
  @$pb.TagNumber(1)
  set entryId(EntryId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEntryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntryId() => $_clearField(1);
  @$pb.TagNumber(1)
  EntryId ensureEntryId() => $_ensure(0);

  /// The name of this entry. This corresponds to the 'entry' part of a full resource name of the
  /// form package:type/entry.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// The visibility of this entry (public, private, undefined).
  @$pb.TagNumber(3)
  Visibility get visibility => $_getN(2);
  @$pb.TagNumber(3)
  set visibility(Visibility value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVisibility() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisibility() => $_clearField(3);
  @$pb.TagNumber(3)
  Visibility ensureVisibility() => $_ensure(2);

  /// Whether this resource, when originating from a compile-time overlay, is allowed to NOT overlay
  /// any existing resources.
  @$pb.TagNumber(4)
  AllowNew get allowNew => $_getN(3);
  @$pb.TagNumber(4)
  set allowNew(AllowNew value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAllowNew() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllowNew() => $_clearField(4);
  @$pb.TagNumber(4)
  AllowNew ensureAllowNew() => $_ensure(3);

  /// Whether this resource can be overlaid by a runtime resource overlay (RRO).
  @$pb.TagNumber(5)
  OverlayableItem get overlayableItem => $_getN(4);
  @$pb.TagNumber(5)
  set overlayableItem(OverlayableItem value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOverlayableItem() => $_has(4);
  @$pb.TagNumber(5)
  void clearOverlayableItem() => $_clearField(5);
  @$pb.TagNumber(5)
  OverlayableItem ensureOverlayableItem() => $_ensure(4);

  /// The set of values defined for this entry, each corresponding to a different
  /// configuration/variant.
  @$pb.TagNumber(6)
  $pb.PbList<ConfigValue> get configValue => $_getList(5);

  /// The staged resource ID of this finalized resource.
  @$pb.TagNumber(7)
  StagedId get stagedId => $_getN(6);
  @$pb.TagNumber(7)
  set stagedId(StagedId value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStagedId() => $_has(6);
  @$pb.TagNumber(7)
  void clearStagedId() => $_clearField(7);
  @$pb.TagNumber(7)
  StagedId ensureStagedId() => $_ensure(6);

  /// The set of values defined for this entry which are behind disabled flags
  @$pb.TagNumber(8)
  $pb.PbList<ConfigValue> get flagDisabledConfigValue => $_getList(7);
}

/// A Configuration/Value pair.
class ConfigValue extends $pb.GeneratedMessage {
  factory ConfigValue({
    $0.Configuration? config,
    Value? value,
  }) {
    final result = create();
    if (config != null) result.config = config;
    if (value != null) result.value = value;
    return result;
  }

  ConfigValue._();

  factory ConfigValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<$0.Configuration>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $0.Configuration.create)
    ..aOM<Value>(2, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigValue copyWith(void Function(ConfigValue) updates) =>
      super.copyWith((message) => updates(message as ConfigValue))
          as ConfigValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigValue create() => ConfigValue._();
  @$core.override
  ConfigValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigValue>(create);
  static ConfigValue? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Configuration get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($0.Configuration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Configuration ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

enum Value_Value { item, compoundValue, notSet }

/// The generic meta-data for every value in a resource table.
class Value extends $pb.GeneratedMessage {
  factory Value({
    Source? source,
    $core.String? comment,
    $core.bool? weak,
    Item? item,
    CompoundValue? compoundValue,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (weak != null) result.weak = weak;
    if (item != null) result.item = item;
    if (compoundValue != null) result.compoundValue = compoundValue;
    return result;
  }

  Value._();

  factory Value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Value_Value> _Value_ValueByTag = {
    4: Value_Value.item,
    5: Value_Value.compoundValue,
    0: Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOB(3, _omitFieldNames ? '' : 'weak')
    ..aOM<Item>(4, _omitFieldNames ? '' : 'item', subBuilder: Item.create)
    ..aOM<CompoundValue>(5, _omitFieldNames ? '' : 'compoundValue',
        subBuilder: CompoundValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value)) as Value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  @$core.override
  Value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Value_Value whichValue() => _Value_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearValue() => $_clearField($_whichOneof(0));

  /// Where the value was defined.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comment associated with the value.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// Whether the value can be overridden.
  @$pb.TagNumber(3)
  $core.bool get weak => $_getBF(2);
  @$pb.TagNumber(3)
  set weak($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWeak() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeak() => $_clearField(3);

  @$pb.TagNumber(4)
  Item get item => $_getN(3);
  @$pb.TagNumber(4)
  set item(Item value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearItem() => $_clearField(4);
  @$pb.TagNumber(4)
  Item ensureItem() => $_ensure(3);

  @$pb.TagNumber(5)
  CompoundValue get compoundValue => $_getN(4);
  @$pb.TagNumber(5)
  set compoundValue(CompoundValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCompoundValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompoundValue() => $_clearField(5);
  @$pb.TagNumber(5)
  CompoundValue ensureCompoundValue() => $_ensure(4);
}

enum Item_Value { ref, str, rawStr, styledStr, file, id, prim, notSet }

/// An Item is an abstract type. It represents a value that can appear inline in many places, such
/// as XML attribute values or on the right hand side of style attribute definitions. The concrete
/// type is one of the types below. Only one can be set.
class Item extends $pb.GeneratedMessage {
  factory Item({
    Reference? ref,
    String? str,
    RawString? rawStr,
    StyledString? styledStr,
    FileReference? file,
    Id? id,
    Primitive? prim,
    $core.int? flagStatus,
    $core.bool? flagNegated,
    $core.String? flagName,
  }) {
    final result = create();
    if (ref != null) result.ref = ref;
    if (str != null) result.str = str;
    if (rawStr != null) result.rawStr = rawStr;
    if (styledStr != null) result.styledStr = styledStr;
    if (file != null) result.file = file;
    if (id != null) result.id = id;
    if (prim != null) result.prim = prim;
    if (flagStatus != null) result.flagStatus = flagStatus;
    if (flagNegated != null) result.flagNegated = flagNegated;
    if (flagName != null) result.flagName = flagName;
    return result;
  }

  Item._();

  factory Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Item_Value> _Item_ValueByTag = {
    1: Item_Value.ref,
    2: Item_Value.str,
    3: Item_Value.rawStr,
    4: Item_Value.styledStr,
    5: Item_Value.file,
    6: Item_Value.id,
    7: Item_Value.prim,
    0: Item_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<Reference>(1, _omitFieldNames ? '' : 'ref',
        subBuilder: Reference.create)
    ..aOM<String>(2, _omitFieldNames ? '' : 'str', subBuilder: String.create)
    ..aOM<RawString>(3, _omitFieldNames ? '' : 'rawStr',
        subBuilder: RawString.create)
    ..aOM<StyledString>(4, _omitFieldNames ? '' : 'styledStr',
        subBuilder: StyledString.create)
    ..aOM<FileReference>(5, _omitFieldNames ? '' : 'file',
        subBuilder: FileReference.create)
    ..aOM<Id>(6, _omitFieldNames ? '' : 'id', subBuilder: Id.create)
    ..aOM<Primitive>(7, _omitFieldNames ? '' : 'prim',
        subBuilder: Primitive.create)
    ..aI(8, _omitFieldNames ? '' : 'flagStatus', fieldType: $pb.PbFieldType.OU3)
    ..aOB(9, _omitFieldNames ? '' : 'flagNegated')
    ..aOS(10, _omitFieldNames ? '' : 'flagName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item copyWith(void Function(Item) updates) =>
      super.copyWith((message) => updates(message as Item)) as Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  @$core.override
  Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  Item_Value whichValue() => _Item_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Reference get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(Reference value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => $_clearField(1);
  @$pb.TagNumber(1)
  Reference ensureRef() => $_ensure(0);

  @$pb.TagNumber(2)
  String get str => $_getN(1);
  @$pb.TagNumber(2)
  set str(String value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearStr() => $_clearField(2);
  @$pb.TagNumber(2)
  String ensureStr() => $_ensure(1);

  @$pb.TagNumber(3)
  RawString get rawStr => $_getN(2);
  @$pb.TagNumber(3)
  set rawStr(RawString value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRawStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearRawStr() => $_clearField(3);
  @$pb.TagNumber(3)
  RawString ensureRawStr() => $_ensure(2);

  @$pb.TagNumber(4)
  StyledString get styledStr => $_getN(3);
  @$pb.TagNumber(4)
  set styledStr(StyledString value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStyledStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearStyledStr() => $_clearField(4);
  @$pb.TagNumber(4)
  StyledString ensureStyledStr() => $_ensure(3);

  @$pb.TagNumber(5)
  FileReference get file => $_getN(4);
  @$pb.TagNumber(5)
  set file(FileReference value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFile() => $_has(4);
  @$pb.TagNumber(5)
  void clearFile() => $_clearField(5);
  @$pb.TagNumber(5)
  FileReference ensureFile() => $_ensure(4);

  @$pb.TagNumber(6)
  Id get id => $_getN(5);
  @$pb.TagNumber(6)
  set id(Id value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => $_clearField(6);
  @$pb.TagNumber(6)
  Id ensureId() => $_ensure(5);

  @$pb.TagNumber(7)
  Primitive get prim => $_getN(6);
  @$pb.TagNumber(7)
  set prim(Primitive value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPrim() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrim() => $_clearField(7);
  @$pb.TagNumber(7)
  Primitive ensurePrim() => $_ensure(6);

  /// The status of the flag the value is behind if any
  @$pb.TagNumber(8)
  $core.int get flagStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set flagStatus($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFlagStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearFlagStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get flagNegated => $_getBF(8);
  @$pb.TagNumber(9)
  set flagNegated($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFlagNegated() => $_has(8);
  @$pb.TagNumber(9)
  void clearFlagNegated() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get flagName => $_getSZ(9);
  @$pb.TagNumber(10)
  set flagName($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFlagName() => $_has(9);
  @$pb.TagNumber(10)
  void clearFlagName() => $_clearField(10);
}

enum CompoundValue_Value {
  attr,
  style,
  styleable,
  array,
  plural,
  macro,
  notSet
}

/// A CompoundValue is an abstract type. It represents a value that is a made of other values.
/// These can only usually appear as top-level resources. The concrete type is one of the types
/// below. Only one can be set.
class CompoundValue extends $pb.GeneratedMessage {
  factory CompoundValue({
    Attribute? attr,
    Style? style,
    Styleable? styleable,
    Array? array,
    Plural? plural,
    MacroBody? macro,
    $core.int? flagStatus,
    $core.bool? flagNegated,
    $core.String? flagName,
  }) {
    final result = create();
    if (attr != null) result.attr = attr;
    if (style != null) result.style = style;
    if (styleable != null) result.styleable = styleable;
    if (array != null) result.array = array;
    if (plural != null) result.plural = plural;
    if (macro != null) result.macro = macro;
    if (flagStatus != null) result.flagStatus = flagStatus;
    if (flagNegated != null) result.flagNegated = flagNegated;
    if (flagName != null) result.flagName = flagName;
    return result;
  }

  CompoundValue._();

  factory CompoundValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompoundValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CompoundValue_Value>
      _CompoundValue_ValueByTag = {
    1: CompoundValue_Value.attr,
    2: CompoundValue_Value.style,
    3: CompoundValue_Value.styleable,
    4: CompoundValue_Value.array,
    5: CompoundValue_Value.plural,
    6: CompoundValue_Value.macro,
    0: CompoundValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompoundValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<Attribute>(1, _omitFieldNames ? '' : 'attr',
        subBuilder: Attribute.create)
    ..aOM<Style>(2, _omitFieldNames ? '' : 'style', subBuilder: Style.create)
    ..aOM<Styleable>(3, _omitFieldNames ? '' : 'styleable',
        subBuilder: Styleable.create)
    ..aOM<Array>(4, _omitFieldNames ? '' : 'array', subBuilder: Array.create)
    ..aOM<Plural>(5, _omitFieldNames ? '' : 'plural', subBuilder: Plural.create)
    ..aOM<MacroBody>(6, _omitFieldNames ? '' : 'macro',
        subBuilder: MacroBody.create)
    ..aI(7, _omitFieldNames ? '' : 'flagStatus', fieldType: $pb.PbFieldType.OU3)
    ..aOB(8, _omitFieldNames ? '' : 'flagNegated')
    ..aOS(9, _omitFieldNames ? '' : 'flagName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompoundValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompoundValue copyWith(void Function(CompoundValue) updates) =>
      super.copyWith((message) => updates(message as CompoundValue))
          as CompoundValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompoundValue create() => CompoundValue._();
  @$core.override
  CompoundValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompoundValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompoundValue>(create);
  static CompoundValue? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  CompoundValue_Value whichValue() =>
      _CompoundValue_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Attribute get attr => $_getN(0);
  @$pb.TagNumber(1)
  set attr(Attribute value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttr() => $_clearField(1);
  @$pb.TagNumber(1)
  Attribute ensureAttr() => $_ensure(0);

  @$pb.TagNumber(2)
  Style get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(Style value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  Style ensureStyle() => $_ensure(1);

  @$pb.TagNumber(3)
  Styleable get styleable => $_getN(2);
  @$pb.TagNumber(3)
  set styleable(Styleable value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStyleable() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyleable() => $_clearField(3);
  @$pb.TagNumber(3)
  Styleable ensureStyleable() => $_ensure(2);

  @$pb.TagNumber(4)
  Array get array => $_getN(3);
  @$pb.TagNumber(4)
  set array(Array value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasArray() => $_has(3);
  @$pb.TagNumber(4)
  void clearArray() => $_clearField(4);
  @$pb.TagNumber(4)
  Array ensureArray() => $_ensure(3);

  @$pb.TagNumber(5)
  Plural get plural => $_getN(4);
  @$pb.TagNumber(5)
  set plural(Plural value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPlural() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlural() => $_clearField(5);
  @$pb.TagNumber(5)
  Plural ensurePlural() => $_ensure(4);

  @$pb.TagNumber(6)
  MacroBody get macro => $_getN(5);
  @$pb.TagNumber(6)
  set macro(MacroBody value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMacro() => $_has(5);
  @$pb.TagNumber(6)
  void clearMacro() => $_clearField(6);
  @$pb.TagNumber(6)
  MacroBody ensureMacro() => $_ensure(5);

  /// The status of the flag the value is behind if any
  @$pb.TagNumber(7)
  $core.int get flagStatus => $_getIZ(6);
  @$pb.TagNumber(7)
  set flagStatus($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFlagStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearFlagStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get flagNegated => $_getBF(7);
  @$pb.TagNumber(8)
  set flagNegated($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFlagNegated() => $_has(7);
  @$pb.TagNumber(8)
  void clearFlagNegated() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get flagName => $_getSZ(8);
  @$pb.TagNumber(9)
  set flagName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFlagName() => $_has(8);
  @$pb.TagNumber(9)
  void clearFlagName() => $_clearField(9);
}

/// Message holding a boolean, so it can be optionally encoded.
class Boolean extends $pb.GeneratedMessage {
  factory Boolean({
    $core.bool? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  Boolean._();

  factory Boolean.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Boolean.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Boolean',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Boolean clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Boolean copyWith(void Function(Boolean) updates) =>
      super.copyWith((message) => updates(message as Boolean)) as Boolean;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Boolean create() => Boolean._();
  @$core.override
  Boolean createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Boolean getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Boolean>(create);
  static Boolean? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// A value that is a reference to another resource. This reference can be by name or resource ID.
class Reference extends $pb.GeneratedMessage {
  factory Reference({
    Reference_Type? type,
    $core.int? id,
    $core.String? name,
    $core.bool? private,
    Boolean? isDynamic,
    $core.int? typeFlags,
    $core.bool? allowRaw,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (private != null) result.private = private;
    if (isDynamic != null) result.isDynamic = isDynamic;
    if (typeFlags != null) result.typeFlags = typeFlags;
    if (allowRaw != null) result.allowRaw = allowRaw;
    return result;
  }

  Reference._();

  factory Reference.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Reference.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Reference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aE<Reference_Type>(1, _omitFieldNames ? '' : 'type',
        enumValues: Reference_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOB(4, _omitFieldNames ? '' : 'private')
    ..aOM<Boolean>(5, _omitFieldNames ? '' : 'isDynamic',
        subBuilder: Boolean.create)
    ..aI(6, _omitFieldNames ? '' : 'typeFlags', fieldType: $pb.PbFieldType.OU3)
    ..aOB(7, _omitFieldNames ? '' : 'allowRaw')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Reference clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Reference copyWith(void Function(Reference) updates) =>
      super.copyWith((message) => updates(message as Reference)) as Reference;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reference create() => Reference._();
  @$core.override
  Reference createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Reference getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reference>(create);
  static Reference? _defaultInstance;

  @$pb.TagNumber(1)
  Reference_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Reference_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// The resource ID (0xPPTTEEEE) of the resource being referred. This is optional.
  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  /// The name of the resource being referred. This is optional if the resource ID is set.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Whether this reference is referencing a private resource (@*package:type/entry).
  @$pb.TagNumber(4)
  $core.bool get private => $_getBF(3);
  @$pb.TagNumber(4)
  set private($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPrivate() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrivate() => $_clearField(4);

  /// Whether this reference is dynamic.
  @$pb.TagNumber(5)
  Boolean get isDynamic => $_getN(4);
  @$pb.TagNumber(5)
  set isDynamic(Boolean value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasIsDynamic() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDynamic() => $_clearField(5);
  @$pb.TagNumber(5)
  Boolean ensureIsDynamic() => $_ensure(4);

  /// The type flags used when compiling the reference. Used for substituting the contents of macros.
  @$pb.TagNumber(6)
  $core.int get typeFlags => $_getIZ(5);
  @$pb.TagNumber(6)
  set typeFlags($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTypeFlags() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypeFlags() => $_clearField(6);

  /// Whether raw string values would have been accepted in place of this reference definition. Used
  /// for substituting the contents of macros.
  @$pb.TagNumber(7)
  $core.bool get allowRaw => $_getBF(6);
  @$pb.TagNumber(7)
  set allowRaw($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAllowRaw() => $_has(6);
  @$pb.TagNumber(7)
  void clearAllowRaw() => $_clearField(7);
}

/// A value that represents an ID. This is just a placeholder, as ID values are used to occupy a
/// resource ID (0xPPTTEEEE) as a unique identifier. Their value is unimportant.
class Id extends $pb.GeneratedMessage {
  factory Id() => create();

  Id._();

  factory Id.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Id.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Id',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Id clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Id copyWith(void Function(Id) updates) =>
      super.copyWith((message) => updates(message as Id)) as Id;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Id create() => Id._();
  @$core.override
  Id createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Id getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Id>(create);
  static Id? _defaultInstance;
}

/// A value that is a string.
class String extends $pb.GeneratedMessage {
  factory String({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  String._();

  factory String.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory String.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'String',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  String clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  String copyWith(void Function(String) updates) =>
      super.copyWith((message) => updates(message as String)) as String;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static String create() => String._();
  @$core.override
  String createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static String getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<String>(create);
  static String? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// A value that is a raw string, which is unescaped/uninterpreted. This is typically used to
/// represent the value of a style attribute before the attribute is compiled and the set of
/// allowed values is known.
class RawString extends $pb.GeneratedMessage {
  factory RawString({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  RawString._();

  factory RawString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RawString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RawString',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RawString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RawString copyWith(void Function(RawString) updates) =>
      super.copyWith((message) => updates(message as RawString)) as RawString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RawString create() => RawString._();
  @$core.override
  RawString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RawString getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawString>(create);
  static RawString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// A Span marks a region of the string text that is styled.
class StyledString_Span extends $pb.GeneratedMessage {
  factory StyledString_Span({
    $core.String? tag,
    $core.int? firstChar,
    $core.int? lastChar,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    if (firstChar != null) result.firstChar = firstChar;
    if (lastChar != null) result.lastChar = lastChar;
    return result;
  }

  StyledString_Span._();

  factory StyledString_Span.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StyledString_Span.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StyledString.Span',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tag')
    ..aI(2, _omitFieldNames ? '' : 'firstChar', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'lastChar', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledString_Span clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledString_Span copyWith(void Function(StyledString_Span) updates) =>
      super.copyWith((message) => updates(message as StyledString_Span))
          as StyledString_Span;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StyledString_Span create() => StyledString_Span._();
  @$core.override
  StyledString_Span createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StyledString_Span getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StyledString_Span>(create);
  static StyledString_Span? _defaultInstance;

  /// The name of the tag, and its attributes, encoded as follows:
  /// tag_name;attr1=value1;attr2=value2;[...]
  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);

  /// The first character position this span applies to, in UTF-16 offset.
  @$pb.TagNumber(2)
  $core.int get firstChar => $_getIZ(1);
  @$pb.TagNumber(2)
  set firstChar($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirstChar() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstChar() => $_clearField(2);

  /// The last character position this span applies to, in UTF-16 offset.
  @$pb.TagNumber(3)
  $core.int get lastChar => $_getIZ(2);
  @$pb.TagNumber(3)
  set lastChar($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastChar() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastChar() => $_clearField(3);
}

/// A string with styling information, like html tags that specify boldness, italics, etc.
class StyledString extends $pb.GeneratedMessage {
  factory StyledString({
    $core.String? value,
    $core.Iterable<StyledString_Span>? span,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (span != null) result.span.addAll(span);
    return result;
  }

  StyledString._();

  factory StyledString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StyledString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StyledString',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..pPM<StyledString_Span>(2, _omitFieldNames ? '' : 'span',
        subBuilder: StyledString_Span.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledString copyWith(void Function(StyledString) updates) =>
      super.copyWith((message) => updates(message as StyledString))
          as StyledString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StyledString create() => StyledString._();
  @$core.override
  StyledString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StyledString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StyledString>(create);
  static StyledString? _defaultInstance;

  /// The raw text of the string.
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<StyledString_Span> get span => $_getList(1);
}

/// A value that is a reference to an external entity, like an XML file or a PNG.
class FileReference extends $pb.GeneratedMessage {
  factory FileReference({
    $core.String? path,
    FileReference_Type? type,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (type != null) result.type = type;
    return result;
  }

  FileReference._();

  factory FileReference.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileReference.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileReference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aE<FileReference_Type>(2, _omitFieldNames ? '' : 'type',
        enumValues: FileReference_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileReference clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileReference copyWith(void Function(FileReference) updates) =>
      super.copyWith((message) => updates(message as FileReference))
          as FileReference;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileReference create() => FileReference._();
  @$core.override
  FileReference createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileReference getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileReference>(create);
  static FileReference? _defaultInstance;

  /// Path to a file within the APK (typically res/type-config/entry.ext).
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  /// The type of file this path points to. For UAM bundle, this cannot be
  /// BINARY_XML.
  @$pb.TagNumber(2)
  FileReference_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(FileReference_Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

class Primitive_NullType extends $pb.GeneratedMessage {
  factory Primitive_NullType() => create();

  Primitive_NullType._();

  factory Primitive_NullType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Primitive_NullType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Primitive.NullType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive_NullType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive_NullType copyWith(void Function(Primitive_NullType) updates) =>
      super.copyWith((message) => updates(message as Primitive_NullType))
          as Primitive_NullType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Primitive_NullType create() => Primitive_NullType._();
  @$core.override
  Primitive_NullType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Primitive_NullType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Primitive_NullType>(create);
  static Primitive_NullType? _defaultInstance;
}

class Primitive_EmptyType extends $pb.GeneratedMessage {
  factory Primitive_EmptyType() => create();

  Primitive_EmptyType._();

  factory Primitive_EmptyType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Primitive_EmptyType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Primitive.EmptyType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive_EmptyType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive_EmptyType copyWith(void Function(Primitive_EmptyType) updates) =>
      super.copyWith((message) => updates(message as Primitive_EmptyType))
          as Primitive_EmptyType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Primitive_EmptyType create() => Primitive_EmptyType._();
  @$core.override
  Primitive_EmptyType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Primitive_EmptyType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Primitive_EmptyType>(create);
  static Primitive_EmptyType? _defaultInstance;
}

enum Primitive_OneofValue {
  nullValue,
  emptyValue,
  floatValue,
  dimensionValueDeprecated,
  fractionValueDeprecated,
  intDecimalValue,
  intHexadecimalValue,
  booleanValue,
  colorArgb8Value,
  colorRgb8Value,
  colorArgb4Value,
  colorRgb4Value,
  dimensionValue,
  fractionValue,
  notSet
}

/// A value that represents a primitive data type (float, int, boolean, etc.).
/// Refer to Res_value in ResourceTypes.h for info on types and formatting
class Primitive extends $pb.GeneratedMessage {
  factory Primitive({
    Primitive_NullType? nullValue,
    Primitive_EmptyType? emptyValue,
    $core.double? floatValue,
    @$core.Deprecated('This field is deprecated.')
    $core.double? dimensionValueDeprecated,
    @$core.Deprecated('This field is deprecated.')
    $core.double? fractionValueDeprecated,
    $core.int? intDecimalValue,
    $core.int? intHexadecimalValue,
    $core.bool? booleanValue,
    $core.int? colorArgb8Value,
    $core.int? colorRgb8Value,
    $core.int? colorArgb4Value,
    $core.int? colorRgb4Value,
    $core.int? dimensionValue,
    $core.int? fractionValue,
  }) {
    final result = create();
    if (nullValue != null) result.nullValue = nullValue;
    if (emptyValue != null) result.emptyValue = emptyValue;
    if (floatValue != null) result.floatValue = floatValue;
    if (dimensionValueDeprecated != null)
      result.dimensionValueDeprecated = dimensionValueDeprecated;
    if (fractionValueDeprecated != null)
      result.fractionValueDeprecated = fractionValueDeprecated;
    if (intDecimalValue != null) result.intDecimalValue = intDecimalValue;
    if (intHexadecimalValue != null)
      result.intHexadecimalValue = intHexadecimalValue;
    if (booleanValue != null) result.booleanValue = booleanValue;
    if (colorArgb8Value != null) result.colorArgb8Value = colorArgb8Value;
    if (colorRgb8Value != null) result.colorRgb8Value = colorRgb8Value;
    if (colorArgb4Value != null) result.colorArgb4Value = colorArgb4Value;
    if (colorRgb4Value != null) result.colorRgb4Value = colorRgb4Value;
    if (dimensionValue != null) result.dimensionValue = dimensionValue;
    if (fractionValue != null) result.fractionValue = fractionValue;
    return result;
  }

  Primitive._();

  factory Primitive.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Primitive.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Primitive_OneofValue>
      _Primitive_OneofValueByTag = {
    1: Primitive_OneofValue.nullValue,
    2: Primitive_OneofValue.emptyValue,
    3: Primitive_OneofValue.floatValue,
    4: Primitive_OneofValue.dimensionValueDeprecated,
    5: Primitive_OneofValue.fractionValueDeprecated,
    6: Primitive_OneofValue.intDecimalValue,
    7: Primitive_OneofValue.intHexadecimalValue,
    8: Primitive_OneofValue.booleanValue,
    9: Primitive_OneofValue.colorArgb8Value,
    10: Primitive_OneofValue.colorRgb8Value,
    11: Primitive_OneofValue.colorArgb4Value,
    12: Primitive_OneofValue.colorRgb4Value,
    13: Primitive_OneofValue.dimensionValue,
    14: Primitive_OneofValue.fractionValue,
    0: Primitive_OneofValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Primitive',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
    ..aOM<Primitive_NullType>(1, _omitFieldNames ? '' : 'nullValue',
        subBuilder: Primitive_NullType.create)
    ..aOM<Primitive_EmptyType>(2, _omitFieldNames ? '' : 'emptyValue',
        subBuilder: Primitive_EmptyType.create)
    ..aD(3, _omitFieldNames ? '' : 'floatValue', fieldType: $pb.PbFieldType.OF)
    ..aD(4, _omitFieldNames ? '' : 'dimensionValueDeprecated',
        fieldType: $pb.PbFieldType.OF)
    ..aD(5, _omitFieldNames ? '' : 'fractionValueDeprecated',
        fieldType: $pb.PbFieldType.OF)
    ..aI(6, _omitFieldNames ? '' : 'intDecimalValue')
    ..aI(7, _omitFieldNames ? '' : 'intHexadecimalValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(8, _omitFieldNames ? '' : 'booleanValue')
    ..aI(9, _omitFieldNames ? '' : 'colorArgb8Value',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'colorRgb8Value',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'colorArgb4Value',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'colorRgb4Value',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'dimensionValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'fractionValue',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Primitive copyWith(void Function(Primitive) updates) =>
      super.copyWith((message) => updates(message as Primitive)) as Primitive;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Primitive create() => Primitive._();
  @$core.override
  Primitive createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Primitive getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Primitive>(create);
  static Primitive? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  Primitive_OneofValue whichOneofValue() =>
      _Primitive_OneofValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  void clearOneofValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Primitive_NullType get nullValue => $_getN(0);
  @$pb.TagNumber(1)
  set nullValue(Primitive_NullType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNullValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearNullValue() => $_clearField(1);
  @$pb.TagNumber(1)
  Primitive_NullType ensureNullValue() => $_ensure(0);

  @$pb.TagNumber(2)
  Primitive_EmptyType get emptyValue => $_getN(1);
  @$pb.TagNumber(2)
  set emptyValue(Primitive_EmptyType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEmptyValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmptyValue() => $_clearField(2);
  @$pb.TagNumber(2)
  Primitive_EmptyType ensureEmptyValue() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get floatValue => $_getN(2);
  @$pb.TagNumber(3)
  set floatValue($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFloatValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloatValue() => $_clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.double get dimensionValueDeprecated => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set dimensionValueDeprecated($core.double value) => $_setFloat(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasDimensionValueDeprecated() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearDimensionValueDeprecated() => $_clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.double get fractionValueDeprecated => $_getN(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set fractionValueDeprecated($core.double value) => $_setFloat(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasFractionValueDeprecated() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearFractionValueDeprecated() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get intDecimalValue => $_getIZ(5);
  @$pb.TagNumber(6)
  set intDecimalValue($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIntDecimalValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearIntDecimalValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get intHexadecimalValue => $_getIZ(6);
  @$pb.TagNumber(7)
  set intHexadecimalValue($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIntHexadecimalValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearIntHexadecimalValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get booleanValue => $_getBF(7);
  @$pb.TagNumber(8)
  set booleanValue($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBooleanValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearBooleanValue() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get colorArgb8Value => $_getIZ(8);
  @$pb.TagNumber(9)
  set colorArgb8Value($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasColorArgb8Value() => $_has(8);
  @$pb.TagNumber(9)
  void clearColorArgb8Value() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get colorRgb8Value => $_getIZ(9);
  @$pb.TagNumber(10)
  set colorRgb8Value($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasColorRgb8Value() => $_has(9);
  @$pb.TagNumber(10)
  void clearColorRgb8Value() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get colorArgb4Value => $_getIZ(10);
  @$pb.TagNumber(11)
  set colorArgb4Value($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasColorArgb4Value() => $_has(10);
  @$pb.TagNumber(11)
  void clearColorArgb4Value() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get colorRgb4Value => $_getIZ(11);
  @$pb.TagNumber(12)
  set colorRgb4Value($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasColorRgb4Value() => $_has(11);
  @$pb.TagNumber(12)
  void clearColorRgb4Value() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get dimensionValue => $_getIZ(12);
  @$pb.TagNumber(13)
  set dimensionValue($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDimensionValue() => $_has(12);
  @$pb.TagNumber(13)
  void clearDimensionValue() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get fractionValue => $_getIZ(13);
  @$pb.TagNumber(14)
  set fractionValue($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasFractionValue() => $_has(13);
  @$pb.TagNumber(14)
  void clearFractionValue() => $_clearField(14);
}

/// A Symbol used to represent an enum or a flag.
class Attribute_Symbol extends $pb.GeneratedMessage {
  factory Attribute_Symbol({
    Source? source,
    $core.String? comment,
    Reference? name,
    $core.int? value,
    $core.int? type,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    if (type != null) result.type = type;
    return result;
  }

  Attribute_Symbol._();

  factory Attribute_Symbol.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Attribute_Symbol.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Attribute.Symbol',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOM<Reference>(3, _omitFieldNames ? '' : 'name',
        subBuilder: Reference.create)
    ..aI(4, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Attribute_Symbol clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Attribute_Symbol copyWith(void Function(Attribute_Symbol) updates) =>
      super.copyWith((message) => updates(message as Attribute_Symbol))
          as Attribute_Symbol;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Attribute_Symbol create() => Attribute_Symbol._();
  @$core.override
  Attribute_Symbol createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Attribute_Symbol getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Attribute_Symbol>(create);
  static Attribute_Symbol? _defaultInstance;

  /// Where the enum/flag item was defined.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comments associated with the enum or flag.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// The name of the enum/flag as a reference. Enums/flag items are generated as ID resource
  /// values.
  @$pb.TagNumber(3)
  Reference get name => $_getN(2);
  @$pb.TagNumber(3)
  set name(Reference value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
  @$pb.TagNumber(3)
  Reference ensureName() => $_ensure(2);

  /// The value of the enum/flag.
  @$pb.TagNumber(4)
  $core.int get value => $_getIZ(3);
  @$pb.TagNumber(4)
  set value($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => $_clearField(4);

  /// The data type of the enum/flag as defined in android::Res_value.
  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);
}

/// A value that represents an XML attribute and what values it accepts.
class Attribute extends $pb.GeneratedMessage {
  factory Attribute({
    $core.int? formatFlags,
    $core.int? minInt,
    $core.int? maxInt,
    $core.Iterable<Attribute_Symbol>? symbol,
  }) {
    final result = create();
    if (formatFlags != null) result.formatFlags = formatFlags;
    if (minInt != null) result.minInt = minInt;
    if (maxInt != null) result.maxInt = maxInt;
    if (symbol != null) result.symbol.addAll(symbol);
    return result;
  }

  Attribute._();

  factory Attribute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Attribute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Attribute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'formatFlags',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'minInt')
    ..aI(3, _omitFieldNames ? '' : 'maxInt')
    ..pPM<Attribute_Symbol>(4, _omitFieldNames ? '' : 'symbol',
        subBuilder: Attribute_Symbol.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Attribute clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Attribute copyWith(void Function(Attribute) updates) =>
      super.copyWith((message) => updates(message as Attribute)) as Attribute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Attribute create() => Attribute._();
  @$core.override
  Attribute createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Attribute getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Attribute>(create);
  static Attribute? _defaultInstance;

  /// A bitmask of types that this XML attribute accepts. Corresponds to the flags in the
  /// enum FormatFlags.
  @$pb.TagNumber(1)
  $core.int get formatFlags => $_getIZ(0);
  @$pb.TagNumber(1)
  set formatFlags($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFormatFlags() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormatFlags() => $_clearField(1);

  /// The smallest integer allowed for this XML attribute. Only makes sense if the format includes
  /// FormatFlags::INTEGER.
  @$pb.TagNumber(2)
  $core.int get minInt => $_getIZ(1);
  @$pb.TagNumber(2)
  set minInt($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinInt() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinInt() => $_clearField(2);

  /// The largest integer allowed for this XML attribute. Only makes sense if the format includes
  /// FormatFlags::INTEGER.
  @$pb.TagNumber(3)
  $core.int get maxInt => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxInt($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxInt() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxInt() => $_clearField(3);

  /// The set of enums/flags defined in this attribute. Only makes sense if the format includes
  /// either FormatFlags::ENUM or FormatFlags::FLAGS. Having both is an error.
  @$pb.TagNumber(4)
  $pb.PbList<Attribute_Symbol> get symbol => $_getList(3);
}

/// An XML attribute/value pair defined in the style.
class Style_Entry extends $pb.GeneratedMessage {
  factory Style_Entry({
    Source? source,
    $core.String? comment,
    Reference? key,
    Item? item,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (key != null) result.key = key;
    if (item != null) result.item = item;
    return result;
  }

  Style_Entry._();

  factory Style_Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Style_Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Style.Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOM<Reference>(3, _omitFieldNames ? '' : 'key',
        subBuilder: Reference.create)
    ..aOM<Item>(4, _omitFieldNames ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Style_Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Style_Entry copyWith(void Function(Style_Entry) updates) =>
      super.copyWith((message) => updates(message as Style_Entry))
          as Style_Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Style_Entry create() => Style_Entry._();
  @$core.override
  Style_Entry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Style_Entry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Style_Entry>(create);
  static Style_Entry? _defaultInstance;

  /// Where the entry was defined.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comments associated with the entry.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// A reference to the XML attribute.
  @$pb.TagNumber(3)
  Reference get key => $_getN(2);
  @$pb.TagNumber(3)
  set key(Reference value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);
  @$pb.TagNumber(3)
  Reference ensureKey() => $_ensure(2);

  /// The Item defined for this XML attribute.
  @$pb.TagNumber(4)
  Item get item => $_getN(3);
  @$pb.TagNumber(4)
  set item(Item value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearItem() => $_clearField(4);
  @$pb.TagNumber(4)
  Item ensureItem() => $_ensure(3);
}

/// A value that represents a style.
class Style extends $pb.GeneratedMessage {
  factory Style({
    Reference? parent,
    Source? parentSource,
    $core.Iterable<Style_Entry>? entry,
  }) {
    final result = create();
    if (parent != null) result.parent = parent;
    if (parentSource != null) result.parentSource = parentSource;
    if (entry != null) result.entry.addAll(entry);
    return result;
  }

  Style._();

  factory Style.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Style.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Style',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Reference>(1, _omitFieldNames ? '' : 'parent',
        subBuilder: Reference.create)
    ..aOM<Source>(2, _omitFieldNames ? '' : 'parentSource',
        subBuilder: Source.create)
    ..pPM<Style_Entry>(3, _omitFieldNames ? '' : 'entry',
        subBuilder: Style_Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Style clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Style copyWith(void Function(Style) updates) =>
      super.copyWith((message) => updates(message as Style)) as Style;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Style create() => Style._();
  @$core.override
  Style createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Style getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Style>(create);
  static Style? _defaultInstance;

  /// The optinal style from which this style inherits attributes.
  @$pb.TagNumber(1)
  Reference get parent => $_getN(0);
  @$pb.TagNumber(1)
  set parent(Reference value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => $_clearField(1);
  @$pb.TagNumber(1)
  Reference ensureParent() => $_ensure(0);

  /// The source file information of the parent inheritance declaration.
  @$pb.TagNumber(2)
  Source get parentSource => $_getN(1);
  @$pb.TagNumber(2)
  set parentSource(Source value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasParentSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentSource() => $_clearField(2);
  @$pb.TagNumber(2)
  Source ensureParentSource() => $_ensure(1);

  /// The set of XML attribute/value pairs for this style.
  @$pb.TagNumber(3)
  $pb.PbList<Style_Entry> get entry => $_getList(2);
}

/// An attribute defined for this styleable.
class Styleable_Entry extends $pb.GeneratedMessage {
  factory Styleable_Entry({
    Source? source,
    $core.String? comment,
    Reference? attr,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (attr != null) result.attr = attr;
    return result;
  }

  Styleable_Entry._();

  factory Styleable_Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Styleable_Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Styleable.Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOM<Reference>(3, _omitFieldNames ? '' : 'attr',
        subBuilder: Reference.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Styleable_Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Styleable_Entry copyWith(void Function(Styleable_Entry) updates) =>
      super.copyWith((message) => updates(message as Styleable_Entry))
          as Styleable_Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Styleable_Entry create() => Styleable_Entry._();
  @$core.override
  Styleable_Entry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Styleable_Entry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Styleable_Entry>(create);
  static Styleable_Entry? _defaultInstance;

  /// Where the attribute was defined within the <declare-styleable> block.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comments associated with the declaration.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// The reference to the attribute.
  @$pb.TagNumber(3)
  Reference get attr => $_getN(2);
  @$pb.TagNumber(3)
  set attr(Reference value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAttr() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttr() => $_clearField(3);
  @$pb.TagNumber(3)
  Reference ensureAttr() => $_ensure(2);
}

/// A value that represents a <declare-styleable> XML resource. These are not real resources and
/// only end up as Java fields in the generated R.java. They do not end up in the binary ARSC file.
class Styleable extends $pb.GeneratedMessage {
  factory Styleable({
    $core.Iterable<Styleable_Entry>? entry,
  }) {
    final result = create();
    if (entry != null) result.entry.addAll(entry);
    return result;
  }

  Styleable._();

  factory Styleable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Styleable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Styleable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..pPM<Styleable_Entry>(1, _omitFieldNames ? '' : 'entry',
        subBuilder: Styleable_Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Styleable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Styleable copyWith(void Function(Styleable) updates) =>
      super.copyWith((message) => updates(message as Styleable)) as Styleable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Styleable create() => Styleable._();
  @$core.override
  Styleable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Styleable getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Styleable>(create);
  static Styleable? _defaultInstance;

  /// The set of attribute declarations.
  @$pb.TagNumber(1)
  $pb.PbList<Styleable_Entry> get entry => $_getList(0);
}

/// A single element of the array.
class Array_Element extends $pb.GeneratedMessage {
  factory Array_Element({
    Source? source,
    $core.String? comment,
    Item? item,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (item != null) result.item = item;
    return result;
  }

  Array_Element._();

  factory Array_Element.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Array_Element.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Array.Element',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOM<Item>(3, _omitFieldNames ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Array_Element clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Array_Element copyWith(void Function(Array_Element) updates) =>
      super.copyWith((message) => updates(message as Array_Element))
          as Array_Element;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Array_Element create() => Array_Element._();
  @$core.override
  Array_Element createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Array_Element getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Array_Element>(create);
  static Array_Element? _defaultInstance;

  /// Where the element was defined.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comments associated with the element.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// The value assigned to this element.
  @$pb.TagNumber(3)
  Item get item => $_getN(2);
  @$pb.TagNumber(3)
  set item(Item value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearItem() => $_clearField(3);
  @$pb.TagNumber(3)
  Item ensureItem() => $_ensure(2);
}

/// A value that represents an array of resource values.
class Array extends $pb.GeneratedMessage {
  factory Array({
    $core.Iterable<Array_Element>? element,
  }) {
    final result = create();
    if (element != null) result.element.addAll(element);
    return result;
  }

  Array._();

  factory Array.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Array.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Array',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..pPM<Array_Element>(1, _omitFieldNames ? '' : 'element',
        subBuilder: Array_Element.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Array clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Array copyWith(void Function(Array) updates) =>
      super.copyWith((message) => updates(message as Array)) as Array;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Array create() => Array._();
  @$core.override
  Array createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Array getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Array>(create);
  static Array? _defaultInstance;

  /// The list of array elements.
  @$pb.TagNumber(1)
  $pb.PbList<Array_Element> get element => $_getList(0);
}

/// The plural value for a given arity.
class Plural_Entry extends $pb.GeneratedMessage {
  factory Plural_Entry({
    Source? source,
    $core.String? comment,
    Plural_Arity? arity,
    Item? item,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (comment != null) result.comment = comment;
    if (arity != null) result.arity = arity;
    if (item != null) result.item = item;
    return result;
  }

  Plural_Entry._();

  factory Plural_Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Plural_Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Plural.Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOM<Source>(1, _omitFieldNames ? '' : 'source', subBuilder: Source.create)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aE<Plural_Arity>(3, _omitFieldNames ? '' : 'arity',
        enumValues: Plural_Arity.values)
    ..aOM<Item>(4, _omitFieldNames ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plural_Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plural_Entry copyWith(void Function(Plural_Entry) updates) =>
      super.copyWith((message) => updates(message as Plural_Entry))
          as Plural_Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Plural_Entry create() => Plural_Entry._();
  @$core.override
  Plural_Entry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Plural_Entry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Plural_Entry>(create);
  static Plural_Entry? _defaultInstance;

  /// Where the plural was defined.
  @$pb.TagNumber(1)
  Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(Source value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);
  @$pb.TagNumber(1)
  Source ensureSource() => $_ensure(0);

  /// Any comments associated with the plural.
  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => $_clearField(2);

  /// The arity of the plural.
  @$pb.TagNumber(3)
  Plural_Arity get arity => $_getN(2);
  @$pb.TagNumber(3)
  set arity(Plural_Arity value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasArity() => $_has(2);
  @$pb.TagNumber(3)
  void clearArity() => $_clearField(3);

  /// The value assigned to this plural.
  @$pb.TagNumber(4)
  Item get item => $_getN(3);
  @$pb.TagNumber(4)
  set item(Item value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearItem() => $_clearField(4);
  @$pb.TagNumber(4)
  Item ensureItem() => $_ensure(3);
}

/// A value that represents a string and its many variations based on plurality.
class Plural extends $pb.GeneratedMessage {
  factory Plural({
    $core.Iterable<Plural_Entry>? entry,
  }) {
    final result = create();
    if (entry != null) result.entry.addAll(entry);
    return result;
  }

  Plural._();

  factory Plural.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Plural.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Plural',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..pPM<Plural_Entry>(1, _omitFieldNames ? '' : 'entry',
        subBuilder: Plural_Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plural clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Plural copyWith(void Function(Plural) updates) =>
      super.copyWith((message) => updates(message as Plural)) as Plural;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Plural create() => Plural._();
  @$core.override
  Plural createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Plural getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Plural>(create);
  static Plural? _defaultInstance;

  /// The set of arity/plural mappings.
  @$pb.TagNumber(1)
  $pb.PbList<Plural_Entry> get entry => $_getList(0);
}

enum XmlNode_Node { element, text, notSet }

/// Defines an abstract XmlNode that must be either an XmlElement, or
/// a text node represented by a string.
class XmlNode extends $pb.GeneratedMessage {
  factory XmlNode({
    XmlElement? element,
    $core.String? text,
    SourcePosition? source,
  }) {
    final result = create();
    if (element != null) result.element = element;
    if (text != null) result.text = text;
    if (source != null) result.source = source;
    return result;
  }

  XmlNode._();

  factory XmlNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory XmlNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, XmlNode_Node> _XmlNode_NodeByTag = {
    1: XmlNode_Node.element,
    2: XmlNode_Node.text,
    0: XmlNode_Node.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XmlNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<XmlElement>(1, _omitFieldNames ? '' : 'element',
        subBuilder: XmlElement.create)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOM<SourcePosition>(3, _omitFieldNames ? '' : 'source',
        subBuilder: SourcePosition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlNode copyWith(void Function(XmlNode) updates) =>
      super.copyWith((message) => updates(message as XmlNode)) as XmlNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XmlNode create() => XmlNode._();
  @$core.override
  XmlNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static XmlNode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<XmlNode>(create);
  static XmlNode? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  XmlNode_Node whichNode() => _XmlNode_NodeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearNode() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  XmlElement get element => $_getN(0);
  @$pb.TagNumber(1)
  set element(XmlElement value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasElement() => $_has(0);
  @$pb.TagNumber(1)
  void clearElement() => $_clearField(1);
  @$pb.TagNumber(1)
  XmlElement ensureElement() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  /// Source line and column info.
  @$pb.TagNumber(3)
  SourcePosition get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(SourcePosition value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);
  @$pb.TagNumber(3)
  SourcePosition ensureSource() => $_ensure(2);
}

/// An <element> in an XML document.
class XmlElement extends $pb.GeneratedMessage {
  factory XmlElement({
    $core.Iterable<XmlNamespace>? namespaceDeclaration,
    $core.String? namespaceUri,
    $core.String? name,
    $core.Iterable<XmlAttribute>? attribute,
    $core.Iterable<XmlNode>? child,
  }) {
    final result = create();
    if (namespaceDeclaration != null)
      result.namespaceDeclaration.addAll(namespaceDeclaration);
    if (namespaceUri != null) result.namespaceUri = namespaceUri;
    if (name != null) result.name = name;
    if (attribute != null) result.attribute.addAll(attribute);
    if (child != null) result.child.addAll(child);
    return result;
  }

  XmlElement._();

  factory XmlElement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory XmlElement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XmlElement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..pPM<XmlNamespace>(1, _omitFieldNames ? '' : 'namespaceDeclaration',
        subBuilder: XmlNamespace.create)
    ..aOS(2, _omitFieldNames ? '' : 'namespaceUri')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pPM<XmlAttribute>(4, _omitFieldNames ? '' : 'attribute',
        subBuilder: XmlAttribute.create)
    ..pPM<XmlNode>(5, _omitFieldNames ? '' : 'child',
        subBuilder: XmlNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlElement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlElement copyWith(void Function(XmlElement) updates) =>
      super.copyWith((message) => updates(message as XmlElement)) as XmlElement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XmlElement create() => XmlElement._();
  @$core.override
  XmlElement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static XmlElement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<XmlElement>(create);
  static XmlElement? _defaultInstance;

  /// Namespaces defined on this element.
  @$pb.TagNumber(1)
  $pb.PbList<XmlNamespace> get namespaceDeclaration => $_getList(0);

  /// The namespace URI of this element.
  @$pb.TagNumber(2)
  $core.String get namespaceUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set namespaceUri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNamespaceUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespaceUri() => $_clearField(2);

  /// The name of this element.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// The attributes of this element.
  @$pb.TagNumber(4)
  $pb.PbList<XmlAttribute> get attribute => $_getList(3);

  /// The children of this element.
  @$pb.TagNumber(5)
  $pb.PbList<XmlNode> get child => $_getList(4);
}

/// A namespace declaration on an XmlElement (xmlns:android="http://...").
class XmlNamespace extends $pb.GeneratedMessage {
  factory XmlNamespace({
    $core.String? prefix,
    $core.String? uri,
    SourcePosition? source,
  }) {
    final result = create();
    if (prefix != null) result.prefix = prefix;
    if (uri != null) result.uri = uri;
    if (source != null) result.source = source;
    return result;
  }

  XmlNamespace._();

  factory XmlNamespace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory XmlNamespace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XmlNamespace',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'prefix')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOM<SourcePosition>(3, _omitFieldNames ? '' : 'source',
        subBuilder: SourcePosition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlNamespace clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlNamespace copyWith(void Function(XmlNamespace) updates) =>
      super.copyWith((message) => updates(message as XmlNamespace))
          as XmlNamespace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XmlNamespace create() => XmlNamespace._();
  @$core.override
  XmlNamespace createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static XmlNamespace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<XmlNamespace>(create);
  static XmlNamespace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get prefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set prefix($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrefix() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => $_clearField(2);

  /// Source line and column info.
  @$pb.TagNumber(3)
  SourcePosition get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(SourcePosition value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);
  @$pb.TagNumber(3)
  SourcePosition ensureSource() => $_ensure(2);
}

/// An attribute defined on an XmlElement (android:text="...").
class XmlAttribute extends $pb.GeneratedMessage {
  factory XmlAttribute({
    $core.String? namespaceUri,
    $core.String? name,
    $core.String? value,
    SourcePosition? source,
    $core.int? resourceId,
    Item? compiledItem,
  }) {
    final result = create();
    if (namespaceUri != null) result.namespaceUri = namespaceUri;
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    if (source != null) result.source = source;
    if (resourceId != null) result.resourceId = resourceId;
    if (compiledItem != null) result.compiledItem = compiledItem;
    return result;
  }

  XmlAttribute._();

  factory XmlAttribute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory XmlAttribute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XmlAttribute',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespaceUri')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..aOM<SourcePosition>(4, _omitFieldNames ? '' : 'source',
        subBuilder: SourcePosition.create)
    ..aI(5, _omitFieldNames ? '' : 'resourceId', fieldType: $pb.PbFieldType.OU3)
    ..aOM<Item>(6, _omitFieldNames ? '' : 'compiledItem',
        subBuilder: Item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlAttribute clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XmlAttribute copyWith(void Function(XmlAttribute) updates) =>
      super.copyWith((message) => updates(message as XmlAttribute))
          as XmlAttribute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XmlAttribute create() => XmlAttribute._();
  @$core.override
  XmlAttribute createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static XmlAttribute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<XmlAttribute>(create);
  static XmlAttribute? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get namespaceUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespaceUri($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNamespaceUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespaceUri() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);

  /// Source line and column info.
  @$pb.TagNumber(4)
  SourcePosition get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(SourcePosition value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);
  @$pb.TagNumber(4)
  SourcePosition ensureSource() => $_ensure(3);

  /// The optional resource ID (0xPPTTEEEE) of the attribute.
  @$pb.TagNumber(5)
  $core.int get resourceId => $_getIZ(4);
  @$pb.TagNumber(5)
  set resourceId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasResourceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearResourceId() => $_clearField(5);

  /// The optional interpreted/compiled version of the `value` string.
  @$pb.TagNumber(6)
  Item get compiledItem => $_getN(5);
  @$pb.TagNumber(6)
  set compiledItem(Item value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCompiledItem() => $_has(5);
  @$pb.TagNumber(6)
  void clearCompiledItem() => $_clearField(6);
  @$pb.TagNumber(6)
  Item ensureCompiledItem() => $_ensure(5);
}

class MacroBody extends $pb.GeneratedMessage {
  factory MacroBody({
    $core.String? rawString,
    StyleString? styleString,
    $core.Iterable<UntranslatableSection>? untranslatableSections,
    $core.Iterable<NamespaceAlias>? namespaceStack,
    SourcePosition? source,
  }) {
    final result = create();
    if (rawString != null) result.rawString = rawString;
    if (styleString != null) result.styleString = styleString;
    if (untranslatableSections != null)
      result.untranslatableSections.addAll(untranslatableSections);
    if (namespaceStack != null) result.namespaceStack.addAll(namespaceStack);
    if (source != null) result.source = source;
    return result;
  }

  MacroBody._();

  factory MacroBody.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MacroBody.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MacroBody',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rawString')
    ..aOM<StyleString>(2, _omitFieldNames ? '' : 'styleString',
        subBuilder: StyleString.create)
    ..pPM<UntranslatableSection>(
        3, _omitFieldNames ? '' : 'untranslatableSections',
        subBuilder: UntranslatableSection.create)
    ..pPM<NamespaceAlias>(4, _omitFieldNames ? '' : 'namespaceStack',
        subBuilder: NamespaceAlias.create)
    ..aOM<SourcePosition>(5, _omitFieldNames ? '' : 'source',
        subBuilder: SourcePosition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MacroBody clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MacroBody copyWith(void Function(MacroBody) updates) =>
      super.copyWith((message) => updates(message as MacroBody)) as MacroBody;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MacroBody create() => MacroBody._();
  @$core.override
  MacroBody createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MacroBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MacroBody>(create);
  static MacroBody? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rawString => $_getSZ(0);
  @$pb.TagNumber(1)
  set rawString($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRawString() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawString() => $_clearField(1);

  @$pb.TagNumber(2)
  StyleString get styleString => $_getN(1);
  @$pb.TagNumber(2)
  set styleString(StyleString value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyleString() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyleString() => $_clearField(2);
  @$pb.TagNumber(2)
  StyleString ensureStyleString() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<UntranslatableSection> get untranslatableSections => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<NamespaceAlias> get namespaceStack => $_getList(3);

  @$pb.TagNumber(5)
  SourcePosition get source => $_getN(4);
  @$pb.TagNumber(5)
  set source(SourcePosition value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(4);
  @$pb.TagNumber(5)
  void clearSource() => $_clearField(5);
  @$pb.TagNumber(5)
  SourcePosition ensureSource() => $_ensure(4);
}

class NamespaceAlias extends $pb.GeneratedMessage {
  factory NamespaceAlias({
    $core.String? prefix,
    $core.String? packageName,
    $core.bool? isPrivate,
  }) {
    final result = create();
    if (prefix != null) result.prefix = prefix;
    if (packageName != null) result.packageName = packageName;
    if (isPrivate != null) result.isPrivate = isPrivate;
    return result;
  }

  NamespaceAlias._();

  factory NamespaceAlias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NamespaceAlias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NamespaceAlias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'prefix')
    ..aOS(2, _omitFieldNames ? '' : 'packageName')
    ..aOB(3, _omitFieldNames ? '' : 'isPrivate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamespaceAlias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamespaceAlias copyWith(void Function(NamespaceAlias) updates) =>
      super.copyWith((message) => updates(message as NamespaceAlias))
          as NamespaceAlias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamespaceAlias create() => NamespaceAlias._();
  @$core.override
  NamespaceAlias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NamespaceAlias getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NamespaceAlias>(create);
  static NamespaceAlias? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get prefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set prefix($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrefix() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isPrivate => $_getBF(2);
  @$pb.TagNumber(3)
  set isPrivate($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsPrivate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsPrivate() => $_clearField(3);
}

class StyleString_Span extends $pb.GeneratedMessage {
  factory StyleString_Span({
    $core.String? name,
    $core.int? startIndex,
    $core.int? endIndex,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (startIndex != null) result.startIndex = startIndex;
    if (endIndex != null) result.endIndex = endIndex;
    return result;
  }

  StyleString_Span._();

  factory StyleString_Span.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StyleString_Span.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StyleString.Span',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'startIndex', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'endIndex', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyleString_Span clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyleString_Span copyWith(void Function(StyleString_Span) updates) =>
      super.copyWith((message) => updates(message as StyleString_Span))
          as StyleString_Span;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StyleString_Span create() => StyleString_Span._();
  @$core.override
  StyleString_Span createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StyleString_Span getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StyleString_Span>(create);
  static StyleString_Span? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get startIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set startIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get endIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set endIndex($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndIndex() => $_clearField(3);
}

class StyleString extends $pb.GeneratedMessage {
  factory StyleString({
    $core.String? str,
    $core.Iterable<StyleString_Span>? spans,
  }) {
    final result = create();
    if (str != null) result.str = str;
    if (spans != null) result.spans.addAll(spans);
    return result;
  }

  StyleString._();

  factory StyleString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StyleString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StyleString',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'str')
    ..pPM<StyleString_Span>(2, _omitFieldNames ? '' : 'spans',
        subBuilder: StyleString_Span.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyleString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyleString copyWith(void Function(StyleString) updates) =>
      super.copyWith((message) => updates(message as StyleString))
          as StyleString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StyleString create() => StyleString._();
  @$core.override
  StyleString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StyleString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StyleString>(create);
  static StyleString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get str => $_getSZ(0);
  @$pb.TagNumber(1)
  set str($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStr() => $_has(0);
  @$pb.TagNumber(1)
  void clearStr() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<StyleString_Span> get spans => $_getList(1);
}

class UntranslatableSection extends $pb.GeneratedMessage {
  factory UntranslatableSection({
    $fixnum.Int64? startIndex,
    $fixnum.Int64? endIndex,
  }) {
    final result = create();
    if (startIndex != null) result.startIndex = startIndex;
    if (endIndex != null) result.endIndex = endIndex;
    return result;
  }

  UntranslatableSection._();

  factory UntranslatableSection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UntranslatableSection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UntranslatableSection',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'startIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'endIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UntranslatableSection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UntranslatableSection copyWith(
          void Function(UntranslatableSection) updates) =>
      super.copyWith((message) => updates(message as UntranslatableSection))
          as UntranslatableSection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UntranslatableSection create() => UntranslatableSection._();
  @$core.override
  UntranslatableSection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UntranslatableSection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UntranslatableSection>(create);
  static UntranslatableSection? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set startIndex($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set endIndex($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndIndex() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
