import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

// static const FlexSchemeData customColors = FlexSchemeData(

ColorScheme myFlexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff0e343d),
  onPrimary: Color(0xfff5f0f0),
  primaryContainer: Color(0xffa9edff),
  onPrimaryContainer: Color(0xff1d2828),
  secondary: Color(0xff223a5e),
  onSecondary: Color(0xfff1f3f6),
  secondaryContainer: Color(0xff97baea),
  onSecondaryContainer: Color(0xff1a2027),
  tertiary: Color(0xff208399),
  onTertiary: Color(0xfff1f9fb),
  tertiaryContainer: Color(0xffccf3ff),
  onTertiaryContainer: Color(0xff232828),
  error: Color(0xffba1b1b),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad4),
  onErrorContainer: Color(0xff410001),
  outline: Color(0xff5f5f5f),
  background: Color(0xfffbfcfc),
  onBackground: Color(0xff121212),
  surface: Color(0xffffffff),
  onSurface: Color(0xff090909),
  surfaceVariant: Color(0xfffbfcfc),
  onSurfaceVariant: Color(0xff121212),
  inverseSurface: Color(0xff050606),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xff9cc3cc),
  shadow: Color(0xff000000),
);

const ColorScheme myFlexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff748bac),
  onPrimary: Color(0xfff4f7fb),
  primaryContainer: Color(0xff1b2e4b),
  onPrimaryContainer: Color(0xffd6dbe1),
  secondary: Color(0xff539eaf),
  onSecondary: Color(0xfff0f9fb),
  secondaryContainer: Color(0xff004e5d),
  onSecondaryContainer: Color(0xffd0e2e6),
  tertiary: Color(0xff219ab5),
  onTertiary: Color(0xffeaf9fc),
  tertiaryContainer: Color(0xff0f5b6a),
  onTertiaryContainer: Color(0xffd3e5e9),
  error: Color(0xffcf6679),
  onError: Color(0xff1e1214),
  errorContainer: Color(0xffb1384e),
  onErrorContainer: Color(0xfff9dde2),
  outline: Color(0xff959599),
  background: Color(0xff16181a),
  onBackground: Color(0xffe3e3e4),
  surface: Color(0xff131415),
  onSurface: Color(0xfff1f1f1),
  surfaceVariant: Color(0xff161719),
  onSurfaceVariant: Color(0xffe3e3e3),
  inverseSurface: Color(0xfffbfbfc),
  onInverseSurface: Color(0xff0e0e0e),
  inversePrimary: Color(0xff3f4856),
  shadow: Color(0xff000000),
);

// var MyFlexThemeDataLight = FlexThemeData.light(colorScheme: myFlexSchemeLight);

ThemeData MyFlexThemeDataLight = FlexThemeData.light(
  colorScheme: myFlexSchemeLight,

  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 20,
  appBarOpacity: 0.95,
  tabBarStyle: FlexTabBarStyle.forBackground,
  lightIsWhite: true,
  swapColors: true,
  tooltipsMatchBackground: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    bottomSheetRadius: 7.0,
    textButtonRadius: 10.0,
    outlinedButtonRadius: 10.0,
    toggleButtonsRadius: 7.0,
    textButtonSchemeColor: SchemeColor.secondary,
    outlinedButtonSchemeColor: SchemeColor.secondary,
    inputDecoratorSchemeColor: SchemeColor.tertiary,
    fabRadius: 40.0,
    fabSchemeColor: SchemeColor.primary,
    snackBarBackgroundSchemeColor: SchemeColor.primary,
    chipRadius: 7.0,
    cardRadius: 7.0,
    popupMenuRadius: 7.0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
    bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.primary,
    navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
    navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    navigationBarUnselectedIconSchemeColor: SchemeColor.primary,
    navigationRailSelectedLabelSchemeColor: SchemeColor.secondary,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.primary,
    navigationRailSelectedIconSchemeColor: SchemeColor.secondary,
    navigationRailUnselectedIconSchemeColor: SchemeColor.primary,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
// To use the playground font, add GoogleFonts package and uncomment
// fontFamily: GoogleFonts.notoSans().fontFamily,
);
// darkTheme: FlexThemeData.dark(colorScheme: myFlexSchemeDark)
ThemeData MyFlexThemeDataDart = FlexThemeData.dark(
  colorScheme: myFlexSchemeDark,

  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarStyle: FlexAppBarStyle.background,
  appBarOpacity: 0.90,
  tabBarStyle: FlexTabBarStyle.forBackground,
  tooltipsMatchBackground: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
    bottomSheetRadius: 7.0,
    textButtonRadius: 10.0,
    outlinedButtonRadius: 10.0,
    toggleButtonsRadius: 7.0,
    textButtonSchemeColor: SchemeColor.secondary,
    outlinedButtonSchemeColor: SchemeColor.secondary,
    fabRadius: 40.0,
    fabSchemeColor: SchemeColor.primary,
    snackBarBackgroundSchemeColor: SchemeColor.primary,
    chipRadius: 7.0,
    cardRadius: 7.0,
    popupMenuRadius: 7.0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
    bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.primary,
    navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
    navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    navigationBarUnselectedIconSchemeColor: SchemeColor.primary,
    navigationRailSelectedLabelSchemeColor: SchemeColor.secondary,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.primary,
    navigationRailSelectedIconSchemeColor: SchemeColor.secondary,
    navigationRailUnselectedIconSchemeColor: SchemeColor.primary,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
// To use the playground font, add GoogleFonts package and uncomment
// fontFamily: GoogleFonts.notoSans().fontFamily,
);
