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

class Configuration_LayoutDirection extends $pb.ProtobufEnum {
  static const Configuration_LayoutDirection LAYOUT_DIRECTION_UNSET =
      Configuration_LayoutDirection._(
          0, _omitEnumNames ? '' : 'LAYOUT_DIRECTION_UNSET');
  static const Configuration_LayoutDirection LAYOUT_DIRECTION_LTR =
      Configuration_LayoutDirection._(
          1, _omitEnumNames ? '' : 'LAYOUT_DIRECTION_LTR');
  static const Configuration_LayoutDirection LAYOUT_DIRECTION_RTL =
      Configuration_LayoutDirection._(
          2, _omitEnumNames ? '' : 'LAYOUT_DIRECTION_RTL');

  static const $core.List<Configuration_LayoutDirection> values =
      <Configuration_LayoutDirection>[
    LAYOUT_DIRECTION_UNSET,
    LAYOUT_DIRECTION_LTR,
    LAYOUT_DIRECTION_RTL,
  ];

  static final $core.List<Configuration_LayoutDirection?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_LayoutDirection? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_LayoutDirection._(super.value, super.name);
}

class Configuration_ScreenLayoutSize extends $pb.ProtobufEnum {
  static const Configuration_ScreenLayoutSize SCREEN_LAYOUT_SIZE_UNSET =
      Configuration_ScreenLayoutSize._(
          0, _omitEnumNames ? '' : 'SCREEN_LAYOUT_SIZE_UNSET');
  static const Configuration_ScreenLayoutSize SCREEN_LAYOUT_SIZE_SMALL =
      Configuration_ScreenLayoutSize._(
          1, _omitEnumNames ? '' : 'SCREEN_LAYOUT_SIZE_SMALL');
  static const Configuration_ScreenLayoutSize SCREEN_LAYOUT_SIZE_NORMAL =
      Configuration_ScreenLayoutSize._(
          2, _omitEnumNames ? '' : 'SCREEN_LAYOUT_SIZE_NORMAL');
  static const Configuration_ScreenLayoutSize SCREEN_LAYOUT_SIZE_LARGE =
      Configuration_ScreenLayoutSize._(
          3, _omitEnumNames ? '' : 'SCREEN_LAYOUT_SIZE_LARGE');
  static const Configuration_ScreenLayoutSize SCREEN_LAYOUT_SIZE_XLARGE =
      Configuration_ScreenLayoutSize._(
          4, _omitEnumNames ? '' : 'SCREEN_LAYOUT_SIZE_XLARGE');

  static const $core.List<Configuration_ScreenLayoutSize> values =
      <Configuration_ScreenLayoutSize>[
    SCREEN_LAYOUT_SIZE_UNSET,
    SCREEN_LAYOUT_SIZE_SMALL,
    SCREEN_LAYOUT_SIZE_NORMAL,
    SCREEN_LAYOUT_SIZE_LARGE,
    SCREEN_LAYOUT_SIZE_XLARGE,
  ];

  static final $core.List<Configuration_ScreenLayoutSize?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Configuration_ScreenLayoutSize? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_ScreenLayoutSize._(super.value, super.name);
}

class Configuration_ScreenLayoutLong extends $pb.ProtobufEnum {
  static const Configuration_ScreenLayoutLong SCREEN_LAYOUT_LONG_UNSET =
      Configuration_ScreenLayoutLong._(
          0, _omitEnumNames ? '' : 'SCREEN_LAYOUT_LONG_UNSET');
  static const Configuration_ScreenLayoutLong SCREEN_LAYOUT_LONG_LONG =
      Configuration_ScreenLayoutLong._(
          1, _omitEnumNames ? '' : 'SCREEN_LAYOUT_LONG_LONG');
  static const Configuration_ScreenLayoutLong SCREEN_LAYOUT_LONG_NOTLONG =
      Configuration_ScreenLayoutLong._(
          2, _omitEnumNames ? '' : 'SCREEN_LAYOUT_LONG_NOTLONG');

  static const $core.List<Configuration_ScreenLayoutLong> values =
      <Configuration_ScreenLayoutLong>[
    SCREEN_LAYOUT_LONG_UNSET,
    SCREEN_LAYOUT_LONG_LONG,
    SCREEN_LAYOUT_LONG_NOTLONG,
  ];

  static final $core.List<Configuration_ScreenLayoutLong?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_ScreenLayoutLong? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_ScreenLayoutLong._(super.value, super.name);
}

class Configuration_ScreenRound extends $pb.ProtobufEnum {
  static const Configuration_ScreenRound SCREEN_ROUND_UNSET =
      Configuration_ScreenRound._(
          0, _omitEnumNames ? '' : 'SCREEN_ROUND_UNSET');
  static const Configuration_ScreenRound SCREEN_ROUND_ROUND =
      Configuration_ScreenRound._(
          1, _omitEnumNames ? '' : 'SCREEN_ROUND_ROUND');
  static const Configuration_ScreenRound SCREEN_ROUND_NOTROUND =
      Configuration_ScreenRound._(
          2, _omitEnumNames ? '' : 'SCREEN_ROUND_NOTROUND');

  static const $core.List<Configuration_ScreenRound> values =
      <Configuration_ScreenRound>[
    SCREEN_ROUND_UNSET,
    SCREEN_ROUND_ROUND,
    SCREEN_ROUND_NOTROUND,
  ];

  static final $core.List<Configuration_ScreenRound?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_ScreenRound? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_ScreenRound._(super.value, super.name);
}

class Configuration_WideColorGamut extends $pb.ProtobufEnum {
  static const Configuration_WideColorGamut WIDE_COLOR_GAMUT_UNSET =
      Configuration_WideColorGamut._(
          0, _omitEnumNames ? '' : 'WIDE_COLOR_GAMUT_UNSET');
  static const Configuration_WideColorGamut WIDE_COLOR_GAMUT_WIDECG =
      Configuration_WideColorGamut._(
          1, _omitEnumNames ? '' : 'WIDE_COLOR_GAMUT_WIDECG');
  static const Configuration_WideColorGamut WIDE_COLOR_GAMUT_NOWIDECG =
      Configuration_WideColorGamut._(
          2, _omitEnumNames ? '' : 'WIDE_COLOR_GAMUT_NOWIDECG');

  static const $core.List<Configuration_WideColorGamut> values =
      <Configuration_WideColorGamut>[
    WIDE_COLOR_GAMUT_UNSET,
    WIDE_COLOR_GAMUT_WIDECG,
    WIDE_COLOR_GAMUT_NOWIDECG,
  ];

  static final $core.List<Configuration_WideColorGamut?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_WideColorGamut? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_WideColorGamut._(super.value, super.name);
}

class Configuration_Hdr extends $pb.ProtobufEnum {
  static const Configuration_Hdr HDR_UNSET =
      Configuration_Hdr._(0, _omitEnumNames ? '' : 'HDR_UNSET');
  static const Configuration_Hdr HDR_HIGHDR =
      Configuration_Hdr._(1, _omitEnumNames ? '' : 'HDR_HIGHDR');
  static const Configuration_Hdr HDR_LOWDR =
      Configuration_Hdr._(2, _omitEnumNames ? '' : 'HDR_LOWDR');

  static const $core.List<Configuration_Hdr> values = <Configuration_Hdr>[
    HDR_UNSET,
    HDR_HIGHDR,
    HDR_LOWDR,
  ];

  static final $core.List<Configuration_Hdr?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_Hdr? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_Hdr._(super.value, super.name);
}

class Configuration_Orientation extends $pb.ProtobufEnum {
  static const Configuration_Orientation ORIENTATION_UNSET =
      Configuration_Orientation._(0, _omitEnumNames ? '' : 'ORIENTATION_UNSET');
  static const Configuration_Orientation ORIENTATION_PORT =
      Configuration_Orientation._(1, _omitEnumNames ? '' : 'ORIENTATION_PORT');
  static const Configuration_Orientation ORIENTATION_LAND =
      Configuration_Orientation._(2, _omitEnumNames ? '' : 'ORIENTATION_LAND');
  static const Configuration_Orientation ORIENTATION_SQUARE =
      Configuration_Orientation._(
          3, _omitEnumNames ? '' : 'ORIENTATION_SQUARE');

  static const $core.List<Configuration_Orientation> values =
      <Configuration_Orientation>[
    ORIENTATION_UNSET,
    ORIENTATION_PORT,
    ORIENTATION_LAND,
    ORIENTATION_SQUARE,
  ];

  static final $core.List<Configuration_Orientation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Configuration_Orientation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_Orientation._(super.value, super.name);
}

class Configuration_UiModeType extends $pb.ProtobufEnum {
  static const Configuration_UiModeType UI_MODE_TYPE_UNSET =
      Configuration_UiModeType._(0, _omitEnumNames ? '' : 'UI_MODE_TYPE_UNSET');
  static const Configuration_UiModeType UI_MODE_TYPE_NORMAL =
      Configuration_UiModeType._(
          1, _omitEnumNames ? '' : 'UI_MODE_TYPE_NORMAL');
  static const Configuration_UiModeType UI_MODE_TYPE_DESK =
      Configuration_UiModeType._(2, _omitEnumNames ? '' : 'UI_MODE_TYPE_DESK');
  static const Configuration_UiModeType UI_MODE_TYPE_CAR =
      Configuration_UiModeType._(3, _omitEnumNames ? '' : 'UI_MODE_TYPE_CAR');
  static const Configuration_UiModeType UI_MODE_TYPE_TELEVISION =
      Configuration_UiModeType._(
          4, _omitEnumNames ? '' : 'UI_MODE_TYPE_TELEVISION');
  static const Configuration_UiModeType UI_MODE_TYPE_APPLIANCE =
      Configuration_UiModeType._(
          5, _omitEnumNames ? '' : 'UI_MODE_TYPE_APPLIANCE');
  static const Configuration_UiModeType UI_MODE_TYPE_WATCH =
      Configuration_UiModeType._(6, _omitEnumNames ? '' : 'UI_MODE_TYPE_WATCH');
  static const Configuration_UiModeType UI_MODE_TYPE_VRHEADSET =
      Configuration_UiModeType._(
          7, _omitEnumNames ? '' : 'UI_MODE_TYPE_VRHEADSET');

  static const $core.List<Configuration_UiModeType> values =
      <Configuration_UiModeType>[
    UI_MODE_TYPE_UNSET,
    UI_MODE_TYPE_NORMAL,
    UI_MODE_TYPE_DESK,
    UI_MODE_TYPE_CAR,
    UI_MODE_TYPE_TELEVISION,
    UI_MODE_TYPE_APPLIANCE,
    UI_MODE_TYPE_WATCH,
    UI_MODE_TYPE_VRHEADSET,
  ];

  static final $core.List<Configuration_UiModeType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static Configuration_UiModeType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_UiModeType._(super.value, super.name);
}

class Configuration_UiModeNight extends $pb.ProtobufEnum {
  static const Configuration_UiModeNight UI_MODE_NIGHT_UNSET =
      Configuration_UiModeNight._(
          0, _omitEnumNames ? '' : 'UI_MODE_NIGHT_UNSET');
  static const Configuration_UiModeNight UI_MODE_NIGHT_NIGHT =
      Configuration_UiModeNight._(
          1, _omitEnumNames ? '' : 'UI_MODE_NIGHT_NIGHT');
  static const Configuration_UiModeNight UI_MODE_NIGHT_NOTNIGHT =
      Configuration_UiModeNight._(
          2, _omitEnumNames ? '' : 'UI_MODE_NIGHT_NOTNIGHT');

  static const $core.List<Configuration_UiModeNight> values =
      <Configuration_UiModeNight>[
    UI_MODE_NIGHT_UNSET,
    UI_MODE_NIGHT_NIGHT,
    UI_MODE_NIGHT_NOTNIGHT,
  ];

  static final $core.List<Configuration_UiModeNight?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_UiModeNight? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_UiModeNight._(super.value, super.name);
}

class Configuration_Touchscreen extends $pb.ProtobufEnum {
  static const Configuration_Touchscreen TOUCHSCREEN_UNSET =
      Configuration_Touchscreen._(0, _omitEnumNames ? '' : 'TOUCHSCREEN_UNSET');
  static const Configuration_Touchscreen TOUCHSCREEN_NOTOUCH =
      Configuration_Touchscreen._(
          1, _omitEnumNames ? '' : 'TOUCHSCREEN_NOTOUCH');
  static const Configuration_Touchscreen TOUCHSCREEN_STYLUS =
      Configuration_Touchscreen._(
          2, _omitEnumNames ? '' : 'TOUCHSCREEN_STYLUS');
  static const Configuration_Touchscreen TOUCHSCREEN_FINGER =
      Configuration_Touchscreen._(
          3, _omitEnumNames ? '' : 'TOUCHSCREEN_FINGER');

  static const $core.List<Configuration_Touchscreen> values =
      <Configuration_Touchscreen>[
    TOUCHSCREEN_UNSET,
    TOUCHSCREEN_NOTOUCH,
    TOUCHSCREEN_STYLUS,
    TOUCHSCREEN_FINGER,
  ];

  static final $core.List<Configuration_Touchscreen?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Configuration_Touchscreen? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_Touchscreen._(super.value, super.name);
}

class Configuration_KeysHidden extends $pb.ProtobufEnum {
  static const Configuration_KeysHidden KEYS_HIDDEN_UNSET =
      Configuration_KeysHidden._(0, _omitEnumNames ? '' : 'KEYS_HIDDEN_UNSET');
  static const Configuration_KeysHidden KEYS_HIDDEN_KEYSEXPOSED =
      Configuration_KeysHidden._(
          1, _omitEnumNames ? '' : 'KEYS_HIDDEN_KEYSEXPOSED');
  static const Configuration_KeysHidden KEYS_HIDDEN_KEYSHIDDEN =
      Configuration_KeysHidden._(
          2, _omitEnumNames ? '' : 'KEYS_HIDDEN_KEYSHIDDEN');
  static const Configuration_KeysHidden KEYS_HIDDEN_KEYSSOFT =
      Configuration_KeysHidden._(
          3, _omitEnumNames ? '' : 'KEYS_HIDDEN_KEYSSOFT');

  static const $core.List<Configuration_KeysHidden> values =
      <Configuration_KeysHidden>[
    KEYS_HIDDEN_UNSET,
    KEYS_HIDDEN_KEYSEXPOSED,
    KEYS_HIDDEN_KEYSHIDDEN,
    KEYS_HIDDEN_KEYSSOFT,
  ];

  static final $core.List<Configuration_KeysHidden?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Configuration_KeysHidden? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_KeysHidden._(super.value, super.name);
}

class Configuration_Keyboard extends $pb.ProtobufEnum {
  static const Configuration_Keyboard KEYBOARD_UNSET =
      Configuration_Keyboard._(0, _omitEnumNames ? '' : 'KEYBOARD_UNSET');
  static const Configuration_Keyboard KEYBOARD_NOKEYS =
      Configuration_Keyboard._(1, _omitEnumNames ? '' : 'KEYBOARD_NOKEYS');
  static const Configuration_Keyboard KEYBOARD_QWERTY =
      Configuration_Keyboard._(2, _omitEnumNames ? '' : 'KEYBOARD_QWERTY');
  static const Configuration_Keyboard KEYBOARD_TWELVEKEY =
      Configuration_Keyboard._(3, _omitEnumNames ? '' : 'KEYBOARD_TWELVEKEY');

  static const $core.List<Configuration_Keyboard> values =
      <Configuration_Keyboard>[
    KEYBOARD_UNSET,
    KEYBOARD_NOKEYS,
    KEYBOARD_QWERTY,
    KEYBOARD_TWELVEKEY,
  ];

  static final $core.List<Configuration_Keyboard?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Configuration_Keyboard? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_Keyboard._(super.value, super.name);
}

class Configuration_NavHidden extends $pb.ProtobufEnum {
  static const Configuration_NavHidden NAV_HIDDEN_UNSET =
      Configuration_NavHidden._(0, _omitEnumNames ? '' : 'NAV_HIDDEN_UNSET');
  static const Configuration_NavHidden NAV_HIDDEN_NAVEXPOSED =
      Configuration_NavHidden._(
          1, _omitEnumNames ? '' : 'NAV_HIDDEN_NAVEXPOSED');
  static const Configuration_NavHidden NAV_HIDDEN_NAVHIDDEN =
      Configuration_NavHidden._(
          2, _omitEnumNames ? '' : 'NAV_HIDDEN_NAVHIDDEN');

  static const $core.List<Configuration_NavHidden> values =
      <Configuration_NavHidden>[
    NAV_HIDDEN_UNSET,
    NAV_HIDDEN_NAVEXPOSED,
    NAV_HIDDEN_NAVHIDDEN,
  ];

  static final $core.List<Configuration_NavHidden?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Configuration_NavHidden? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_NavHidden._(super.value, super.name);
}

class Configuration_Navigation extends $pb.ProtobufEnum {
  static const Configuration_Navigation NAVIGATION_UNSET =
      Configuration_Navigation._(0, _omitEnumNames ? '' : 'NAVIGATION_UNSET');
  static const Configuration_Navigation NAVIGATION_NONAV =
      Configuration_Navigation._(1, _omitEnumNames ? '' : 'NAVIGATION_NONAV');
  static const Configuration_Navigation NAVIGATION_DPAD =
      Configuration_Navigation._(2, _omitEnumNames ? '' : 'NAVIGATION_DPAD');
  static const Configuration_Navigation NAVIGATION_TRACKBALL =
      Configuration_Navigation._(
          3, _omitEnumNames ? '' : 'NAVIGATION_TRACKBALL');
  static const Configuration_Navigation NAVIGATION_WHEEL =
      Configuration_Navigation._(4, _omitEnumNames ? '' : 'NAVIGATION_WHEEL');

  static const $core.List<Configuration_Navigation> values =
      <Configuration_Navigation>[
    NAVIGATION_UNSET,
    NAVIGATION_NONAV,
    NAVIGATION_DPAD,
    NAVIGATION_TRACKBALL,
    NAVIGATION_WHEEL,
  ];

  static final $core.List<Configuration_Navigation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Configuration_Navigation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_Navigation._(super.value, super.name);
}

class Configuration_GrammaticalGender extends $pb.ProtobufEnum {
  static const Configuration_GrammaticalGender GRAM_GENDER_USET =
      Configuration_GrammaticalGender._(
          0, _omitEnumNames ? '' : 'GRAM_GENDER_USET');
  static const Configuration_GrammaticalGender GRAM_GENDER_NEUTER =
      Configuration_GrammaticalGender._(
          1, _omitEnumNames ? '' : 'GRAM_GENDER_NEUTER');
  static const Configuration_GrammaticalGender GRAM_GENDER_FEMININE =
      Configuration_GrammaticalGender._(
          2, _omitEnumNames ? '' : 'GRAM_GENDER_FEMININE');
  static const Configuration_GrammaticalGender GRAM_GENDER_MASCULINE =
      Configuration_GrammaticalGender._(
          3, _omitEnumNames ? '' : 'GRAM_GENDER_MASCULINE');

  static const $core.List<Configuration_GrammaticalGender> values =
      <Configuration_GrammaticalGender>[
    GRAM_GENDER_USET,
    GRAM_GENDER_NEUTER,
    GRAM_GENDER_FEMININE,
    GRAM_GENDER_MASCULINE,
  ];

  static final $core.List<Configuration_GrammaticalGender?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Configuration_GrammaticalGender? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Configuration_GrammaticalGender._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
