import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFF8A00);
  static const Color secondary = Color(0xFF1E88E5);
  static const Color background = Color(0xFF0D1117);
  static const Color surface = Color(0xFF161B22);

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: primary,
      secondary: secondary,
      background: background,
      surface: surface,
    ),
    scaffoldBackgroundColor: background,
    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 1,
      color: surface,
    ),
    textTheme: Typography.whiteMountainView.apply(fontFamily: 'Roboto'),
  );
}
