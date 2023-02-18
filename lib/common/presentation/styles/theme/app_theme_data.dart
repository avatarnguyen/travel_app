import 'package:flutter/material.dart';

import 'data/colors.dart';
import 'data/typography.dart';

MaterialColor clapPrimarySwatch = const MaterialColor(0xFF2f41cb, {
  50: Color(0xFF005AAF),
  100: Color(0xFF00498D),
  200: Color(0xFF00386C),
  300: Color(0xFF00264A),
  400: Color(0xFF001427),
  500: Color(0xFF001426),
  600: Color(0xFF001120), // app background color
  700: Color(0xFF000F1D),
  800: Color(0xFF000E1A),
  900: Color(0xFF000C17),
});

ThemeData clapLightThemeData() {
  final typography = AppTypographyData.regular();
  final colors = AppColorsData.regular();
  return ThemeData(
    primarySwatch: clapPrimarySwatch,
    primaryColor: colors.primary,
    textTheme: TextTheme(
      headline1: typography.headline1,
      headline2: typography.headline2,
      headline3: typography.headline3,
      headline4: typography.headline4,
      bodyText1: typography.body1,
      bodyText2: typography.body2,
    ),
    colorScheme: ColorScheme.light(
      primary: colors.primary,
      secondary: colors.secondary,
      tertiary: colors.accent,
      onPrimaryContainer: colors.primary.withOpacity(0.8),
      onSecondaryContainer: colors.secondary.withOpacity(0.8),
      onError: Colors.red.shade500,
    ),
    backgroundColor: colors.primary,
    scaffoldBackgroundColor: colors.primary,
    appBarTheme: AppBarTheme(
      titleTextStyle: typography.headline1,
      foregroundColor: colors.secondary,
    ),
    canvasColor: colors.primary, // bottom navigation bar color
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colors.primary,
      selectedItemColor: colors.accent,
      unselectedItemColor: colors.secondary,
    ),
  );
}
