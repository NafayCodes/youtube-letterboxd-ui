import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF1F1D36),
      scaffoldBackgroundColor: Color(0xFF1F1D36),
      colorScheme: ColorScheme.light(
          primary: Color(0xFF1F1D36),
          secondary: Color(0xFFE9A6A6),
          surface: Color(0xFF1F1D36),
          tertiary: Color(0xFF9C4A8B)),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        headlineSmall: TextStyle(
          fontSize: 18,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ));
}
