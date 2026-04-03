// This is a generated file - do not edit.
//
// Generated from Configuration.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Configuration.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'Configuration.pbenum.dart';

/// A description of the requirements a device must have in order for a
/// resource to be matched and selected.
class Configuration extends $pb.GeneratedMessage {
  factory Configuration({
    $core.int? mcc,
    $core.int? mnc,
    $core.String? locale,
    Configuration_LayoutDirection? layoutDirection,
    $core.int? screenWidth,
    $core.int? screenHeight,
    $core.int? screenWidthDp,
    $core.int? screenHeightDp,
    $core.int? smallestScreenWidthDp,
    Configuration_ScreenLayoutSize? screenLayoutSize,
    Configuration_ScreenLayoutLong? screenLayoutLong,
    Configuration_ScreenRound? screenRound,
    Configuration_WideColorGamut? wideColorGamut,
    Configuration_Hdr? hdr,
    Configuration_Orientation? orientation,
    Configuration_UiModeType? uiModeType,
    Configuration_UiModeNight? uiModeNight,
    $core.int? density,
    Configuration_Touchscreen? touchscreen,
    Configuration_KeysHidden? keysHidden,
    Configuration_Keyboard? keyboard,
    Configuration_NavHidden? navHidden,
    Configuration_Navigation? navigation,
    $core.int? sdkVersion,
    $core.String? product,
    Configuration_GrammaticalGender? grammaticalGender,
  }) {
    final result = create();
    if (mcc != null) result.mcc = mcc;
    if (mnc != null) result.mnc = mnc;
    if (locale != null) result.locale = locale;
    if (layoutDirection != null) result.layoutDirection = layoutDirection;
    if (screenWidth != null) result.screenWidth = screenWidth;
    if (screenHeight != null) result.screenHeight = screenHeight;
    if (screenWidthDp != null) result.screenWidthDp = screenWidthDp;
    if (screenHeightDp != null) result.screenHeightDp = screenHeightDp;
    if (smallestScreenWidthDp != null)
      result.smallestScreenWidthDp = smallestScreenWidthDp;
    if (screenLayoutSize != null) result.screenLayoutSize = screenLayoutSize;
    if (screenLayoutLong != null) result.screenLayoutLong = screenLayoutLong;
    if (screenRound != null) result.screenRound = screenRound;
    if (wideColorGamut != null) result.wideColorGamut = wideColorGamut;
    if (hdr != null) result.hdr = hdr;
    if (orientation != null) result.orientation = orientation;
    if (uiModeType != null) result.uiModeType = uiModeType;
    if (uiModeNight != null) result.uiModeNight = uiModeNight;
    if (density != null) result.density = density;
    if (touchscreen != null) result.touchscreen = touchscreen;
    if (keysHidden != null) result.keysHidden = keysHidden;
    if (keyboard != null) result.keyboard = keyboard;
    if (navHidden != null) result.navHidden = navHidden;
    if (navigation != null) result.navigation = navigation;
    if (sdkVersion != null) result.sdkVersion = sdkVersion;
    if (product != null) result.product = product;
    if (grammaticalGender != null) result.grammaticalGender = grammaticalGender;
    return result;
  }

  Configuration._();

  factory Configuration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Configuration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Configuration',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aapt.pb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mcc', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'mnc', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'locale')
    ..aE<Configuration_LayoutDirection>(
        4, _omitFieldNames ? '' : 'layoutDirection',
        enumValues: Configuration_LayoutDirection.values)
    ..aI(5, _omitFieldNames ? '' : 'screenWidth',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'screenHeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'screenWidthDp',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'screenHeightDp',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'smallestScreenWidthDp',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<Configuration_ScreenLayoutSize>(
        10, _omitFieldNames ? '' : 'screenLayoutSize',
        enumValues: Configuration_ScreenLayoutSize.values)
    ..aE<Configuration_ScreenLayoutLong>(
        11, _omitFieldNames ? '' : 'screenLayoutLong',
        enumValues: Configuration_ScreenLayoutLong.values)
    ..aE<Configuration_ScreenRound>(12, _omitFieldNames ? '' : 'screenRound',
        enumValues: Configuration_ScreenRound.values)
    ..aE<Configuration_WideColorGamut>(
        13, _omitFieldNames ? '' : 'wideColorGamut',
        enumValues: Configuration_WideColorGamut.values)
    ..aE<Configuration_Hdr>(14, _omitFieldNames ? '' : 'hdr',
        enumValues: Configuration_Hdr.values)
    ..aE<Configuration_Orientation>(15, _omitFieldNames ? '' : 'orientation',
        enumValues: Configuration_Orientation.values)
    ..aE<Configuration_UiModeType>(16, _omitFieldNames ? '' : 'uiModeType',
        enumValues: Configuration_UiModeType.values)
    ..aE<Configuration_UiModeNight>(17, _omitFieldNames ? '' : 'uiModeNight',
        enumValues: Configuration_UiModeNight.values)
    ..aI(18, _omitFieldNames ? '' : 'density', fieldType: $pb.PbFieldType.OU3)
    ..aE<Configuration_Touchscreen>(19, _omitFieldNames ? '' : 'touchscreen',
        enumValues: Configuration_Touchscreen.values)
    ..aE<Configuration_KeysHidden>(20, _omitFieldNames ? '' : 'keysHidden',
        enumValues: Configuration_KeysHidden.values)
    ..aE<Configuration_Keyboard>(21, _omitFieldNames ? '' : 'keyboard',
        enumValues: Configuration_Keyboard.values)
    ..aE<Configuration_NavHidden>(22, _omitFieldNames ? '' : 'navHidden',
        enumValues: Configuration_NavHidden.values)
    ..aE<Configuration_Navigation>(23, _omitFieldNames ? '' : 'navigation',
        enumValues: Configuration_Navigation.values)
    ..aI(24, _omitFieldNames ? '' : 'sdkVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(25, _omitFieldNames ? '' : 'product')
    ..aE<Configuration_GrammaticalGender>(
        26, _omitFieldNames ? '' : 'grammaticalGender',
        enumValues: Configuration_GrammaticalGender.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Configuration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Configuration copyWith(void Function(Configuration) updates) =>
      super.copyWith((message) => updates(message as Configuration))
          as Configuration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Configuration create() => Configuration._();
  @$core.override
  Configuration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Configuration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Configuration>(create);
  static Configuration? _defaultInstance;

  /// Mobile country code.
  @$pb.TagNumber(1)
  $core.int get mcc => $_getIZ(0);
  @$pb.TagNumber(1)
  set mcc($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMcc() => $_has(0);
  @$pb.TagNumber(1)
  void clearMcc() => $_clearField(1);

  /// Mobile network code.
  @$pb.TagNumber(2)
  $core.int get mnc => $_getIZ(1);
  @$pb.TagNumber(2)
  set mnc($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMnc() => $_has(1);
  @$pb.TagNumber(2)
  void clearMnc() => $_clearField(2);

  /// BCP-47 locale tag.
  @$pb.TagNumber(3)
  $core.String get locale => $_getSZ(2);
  @$pb.TagNumber(3)
  set locale($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocale() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocale() => $_clearField(3);

  /// Left-to-right, right-to-left...
  @$pb.TagNumber(4)
  Configuration_LayoutDirection get layoutDirection => $_getN(3);
  @$pb.TagNumber(4)
  set layoutDirection(Configuration_LayoutDirection value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLayoutDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearLayoutDirection() => $_clearField(4);

  /// Screen width in pixels. Prefer screen_width_dp.
  @$pb.TagNumber(5)
  $core.int get screenWidth => $_getIZ(4);
  @$pb.TagNumber(5)
  set screenWidth($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScreenWidth() => $_has(4);
  @$pb.TagNumber(5)
  void clearScreenWidth() => $_clearField(5);

  /// Screen height in pixels. Prefer screen_height_dp.
  @$pb.TagNumber(6)
  $core.int get screenHeight => $_getIZ(5);
  @$pb.TagNumber(6)
  set screenHeight($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScreenHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearScreenHeight() => $_clearField(6);

  /// Screen width in density independent pixels (dp).
  @$pb.TagNumber(7)
  $core.int get screenWidthDp => $_getIZ(6);
  @$pb.TagNumber(7)
  set screenWidthDp($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasScreenWidthDp() => $_has(6);
  @$pb.TagNumber(7)
  void clearScreenWidthDp() => $_clearField(7);

  /// Screen height in density independent pixels (dp).
  @$pb.TagNumber(8)
  $core.int get screenHeightDp => $_getIZ(7);
  @$pb.TagNumber(8)
  set screenHeightDp($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasScreenHeightDp() => $_has(7);
  @$pb.TagNumber(8)
  void clearScreenHeightDp() => $_clearField(8);

  /// The smallest screen dimension, regardless of orientation, in dp.
  @$pb.TagNumber(9)
  $core.int get smallestScreenWidthDp => $_getIZ(8);
  @$pb.TagNumber(9)
  set smallestScreenWidthDp($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSmallestScreenWidthDp() => $_has(8);
  @$pb.TagNumber(9)
  void clearSmallestScreenWidthDp() => $_clearField(9);

  /// Whether the device screen is classified as small, normal, large, xlarge.
  @$pb.TagNumber(10)
  Configuration_ScreenLayoutSize get screenLayoutSize => $_getN(9);
  @$pb.TagNumber(10)
  set screenLayoutSize(Configuration_ScreenLayoutSize value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasScreenLayoutSize() => $_has(9);
  @$pb.TagNumber(10)
  void clearScreenLayoutSize() => $_clearField(10);

  /// Whether the device screen is long.
  @$pb.TagNumber(11)
  Configuration_ScreenLayoutLong get screenLayoutLong => $_getN(10);
  @$pb.TagNumber(11)
  set screenLayoutLong(Configuration_ScreenLayoutLong value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasScreenLayoutLong() => $_has(10);
  @$pb.TagNumber(11)
  void clearScreenLayoutLong() => $_clearField(11);

  /// Whether the screen is round (Android Wear).
  @$pb.TagNumber(12)
  Configuration_ScreenRound get screenRound => $_getN(11);
  @$pb.TagNumber(12)
  set screenRound(Configuration_ScreenRound value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasScreenRound() => $_has(11);
  @$pb.TagNumber(12)
  void clearScreenRound() => $_clearField(12);

  /// Whether the screen supports wide color gamut.
  @$pb.TagNumber(13)
  Configuration_WideColorGamut get wideColorGamut => $_getN(12);
  @$pb.TagNumber(13)
  set wideColorGamut(Configuration_WideColorGamut value) =>
      $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasWideColorGamut() => $_has(12);
  @$pb.TagNumber(13)
  void clearWideColorGamut() => $_clearField(13);

  /// Whether the screen has high dynamic range.
  @$pb.TagNumber(14)
  Configuration_Hdr get hdr => $_getN(13);
  @$pb.TagNumber(14)
  set hdr(Configuration_Hdr value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasHdr() => $_has(13);
  @$pb.TagNumber(14)
  void clearHdr() => $_clearField(14);

  /// Which orientation the device is in (portrait, landscape).
  @$pb.TagNumber(15)
  Configuration_Orientation get orientation => $_getN(14);
  @$pb.TagNumber(15)
  set orientation(Configuration_Orientation value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasOrientation() => $_has(14);
  @$pb.TagNumber(15)
  void clearOrientation() => $_clearField(15);

  /// Which type of UI mode the device is in (television, car, etc.).
  @$pb.TagNumber(16)
  Configuration_UiModeType get uiModeType => $_getN(15);
  @$pb.TagNumber(16)
  set uiModeType(Configuration_UiModeType value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasUiModeType() => $_has(15);
  @$pb.TagNumber(16)
  void clearUiModeType() => $_clearField(16);

  /// Whether the device is in night mode.
  @$pb.TagNumber(17)
  Configuration_UiModeNight get uiModeNight => $_getN(16);
  @$pb.TagNumber(17)
  set uiModeNight(Configuration_UiModeNight value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasUiModeNight() => $_has(16);
  @$pb.TagNumber(17)
  void clearUiModeNight() => $_clearField(17);

  /// The device's screen density in dots-per-inch (dpi).
  @$pb.TagNumber(18)
  $core.int get density => $_getIZ(17);
  @$pb.TagNumber(18)
  set density($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDensity() => $_has(17);
  @$pb.TagNumber(18)
  void clearDensity() => $_clearField(18);

  /// Whether a touchscreen exists, supports a stylus, or finger.
  @$pb.TagNumber(19)
  Configuration_Touchscreen get touchscreen => $_getN(18);
  @$pb.TagNumber(19)
  set touchscreen(Configuration_Touchscreen value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasTouchscreen() => $_has(18);
  @$pb.TagNumber(19)
  void clearTouchscreen() => $_clearField(19);

  /// Whether the keyboard hardware keys are currently hidden, exposed, or
  /// if the keyboard is a software keyboard.
  @$pb.TagNumber(20)
  Configuration_KeysHidden get keysHidden => $_getN(19);
  @$pb.TagNumber(20)
  set keysHidden(Configuration_KeysHidden value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasKeysHidden() => $_has(19);
  @$pb.TagNumber(20)
  void clearKeysHidden() => $_clearField(20);

  /// The type of keyboard present (none, QWERTY, 12-key).
  @$pb.TagNumber(21)
  Configuration_Keyboard get keyboard => $_getN(20);
  @$pb.TagNumber(21)
  set keyboard(Configuration_Keyboard value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasKeyboard() => $_has(20);
  @$pb.TagNumber(21)
  void clearKeyboard() => $_clearField(21);

  /// Whether the navigation is exposed or hidden.
  @$pb.TagNumber(22)
  Configuration_NavHidden get navHidden => $_getN(21);
  @$pb.TagNumber(22)
  set navHidden(Configuration_NavHidden value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasNavHidden() => $_has(21);
  @$pb.TagNumber(22)
  void clearNavHidden() => $_clearField(22);

  /// The type of navigation present on the device
  /// (trackball, wheel, dpad, etc.).
  @$pb.TagNumber(23)
  Configuration_Navigation get navigation => $_getN(22);
  @$pb.TagNumber(23)
  set navigation(Configuration_Navigation value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasNavigation() => $_has(22);
  @$pb.TagNumber(23)
  void clearNavigation() => $_clearField(23);

  /// The minimum SDK version of the device.
  @$pb.TagNumber(24)
  $core.int get sdkVersion => $_getIZ(23);
  @$pb.TagNumber(24)
  set sdkVersion($core.int value) => $_setUnsignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasSdkVersion() => $_has(23);
  @$pb.TagNumber(24)
  void clearSdkVersion() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get product => $_getSZ(24);
  @$pb.TagNumber(25)
  set product($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasProduct() => $_has(24);
  @$pb.TagNumber(25)
  void clearProduct() => $_clearField(25);

  /// Grammatical gender.
  @$pb.TagNumber(26)
  Configuration_GrammaticalGender get grammaticalGender => $_getN(25);
  @$pb.TagNumber(26)
  set grammaticalGender(Configuration_GrammaticalGender value) =>
      $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasGrammaticalGender() => $_has(25);
  @$pb.TagNumber(26)
  void clearGrammaticalGender() => $_clearField(26);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
