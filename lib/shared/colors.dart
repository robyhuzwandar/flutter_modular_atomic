import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

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

Map<String, List<Color>> serviceColor = {
  'pulsa': [Color(0xFF2C2F4E), Color(0xFFFFFFFF)],
  'paketData': [Color(0xFFED063D), Color(0xFFFFFFFF)],
  'banking': [Color(0xFF16A36D), Color(0xFFFFFFFF)],
  'pln': [Color(0xFFE07000), Color(0xFFFFFFFF)],
  'air': [Color(0xFF75B1F2), Color(0xFFFFFFFF)],
  'bpjs': [Color(0xFF726D0A), Color(0xFFFFFFFF)],
  'gojek': [Color(0xFF089B39), Color(0xFFFFFFFF)],
  'lainnya': [Color(0xFF2573D7), Color(0xFFFFFFFF)],
};

const double defaultMargin = 24;

Color mainColor = Color(0xFF2573D7);
Color accentColor1 = Color(0xFFBCCDE2);
Color accentColor2 = Color(0xFFFBD460);
Color accentColor3 = Color(0xFFADADAD);
Color accentColor4 = Color(0xFFF72585);

changeStatusBarColor(Color color, bool isColor) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    if (isColor) {
      if (useWhiteForeground(color)) {
        FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
        FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
      }
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
      FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
    }
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
}
