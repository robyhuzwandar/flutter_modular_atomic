import 'package:flutter/material.dart';

// ui ux must have a guide line for assets to be clean

final ThemeData CompanyThemeData = new ThemeData(
  brightness: Brightness.light,
  primaryColorBrightness: Brightness.light,
  accentColor: CompanyColors.black[500],
  accentColorBrightness: Brightness.light,
);

class CompanyColors {
  CompanyColors._();

  static const _blackPrimaryValue = 0xFF000000;
  static const _bluePrimaryValue = 0xFF000000;
  static const _redPrimaryValue = 0xFF000000;
  static const _yellowPrimaryValue = 0xFF000000;
  static const _greenPrimaryValue = 0xFF000000;

  static const MaterialColor black = const MaterialColor(
    _blackPrimaryValue,
    const <int, Color>{
      50: const Color(0xFF),
      100: const Color(0xFF),
      200: const Color(0xFF),
      300: const Color(0xFF),
      500: const Color(0xFF),
      600: const Color(0xFF),
      700: const Color(0xFF),
      800: const Color(0xFF),
      900: const Color(0xFF),
    },
  );

  static const MaterialColor blue = const MaterialColor(
    _bluePrimaryValue,
    const <int, Color>{
      50: const Color(0xFF),
      100: const Color(0xFF),
      200: const Color(0xFF),
      300: const Color(0xFF),
      400: const Color(0xFF),
      500: const Color(0xFF),
      600: const Color(0xFF),
      700: const Color(0xFF),
      800: const Color(0xFF),
    },
  );

  static const MaterialColor green = const MaterialColor(
    _greenPrimaryValue,
    const <int, Color>{
      50: const Color(0xFF),
      100: const Color(0xFF),
      200: const Color(0xFF),
      300: const Color(0xFF),
      400: const Color(0xFF),
      500: const Color(0xFF),
      600: const Color(0xFF),
      700: const Color(0xFF),
      800: const Color(0xFF),
      900: const Color(0xFF),
    },
  );
  static const MaterialColor red = const MaterialColor(
    _redPrimaryValue,
    const <int, Color>{
      50: const Color(0xFF),
      100: const Color(0xFF),
      200: const Color(0xFF),
      300: const Color(0xFF),
      400: const Color(0xFF),
      500: const Color(0xFF),
      600: const Color(0xFF),
      700: const Color(0xFF),
      800: const Color(0xFF),
      900: const Color(0xFF),
    },
  );
  static const MaterialColor yellow = const MaterialColor(
    _yellowPrimaryValue,
    const <int, Color>{
      50: const Color(0xFF),
      100: const Color(0xFF),
      200: const Color(0xFF),
      300: const Color(0xFF),
      400: const Color(0xFF),
      500: const Color(0xFF),
      600: const Color(0xFF),
      700: const Color(0xFF),
      800: const Color(0xFF),
      900: const Color(0xFF),
    },
  );
}

Map<String, Color> primaryColor = {
  'blueTosca': const Color(0xFF2D9CDB),
  'blue': const Color(0xFF2573D7),
  'green': const Color(0xFF2CB50A),
  'red': const Color(0xFF),
  'yellow': const Color(0xFF),
  'black': const Color(0xFF333333),
};

Map<String, Color> commonColor = {
  'greyBlue': const Color(0xFFBCCDE2),
  'blue': const Color(0xFF2573D7),
  'green': const Color(0xFF2CB50A),
  'red': const Color(0xFF),
  'yellow': const Color(0xFF),
  'black': const Color(0xFF333333),
};

Map<String, Color> serviceColor = {
  'pulsa': const Color(0xFFECEEFF),
  'paketData': const Color(0xFFFFEBF0),
  'banking': const Color(0xFFE9FFF6),
  'pln': const Color(0xFFFFDCBA),
  'air': const Color(0xFFE4E7FA),
  'bpjs': const Color(0xFFDCDDBE),
  'gojek': const Color(0xFFE2FFEB),
  'lainnya': const Color(0xFFE4EEFA),
};
