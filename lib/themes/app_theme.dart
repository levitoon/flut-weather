import 'package:flut_01/themes/color_schemes.g.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: const TextTheme(
        //displayLarge: GoogleFonts.Kanit(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),

        displayLarge: TextStyle(
            fontSize: 96, fontWeight: FontWeight.w300, color: Colors.grey),
        displayMedium: TextStyle(
            fontSize: 60, fontWeight: FontWeight.w400, color: Colors.amber),
        displaySmall: TextStyle(
            fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
        headlineMedium: TextStyle(
            fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
        headlineSmall: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
        titleLarge: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black87),
        bodySmall: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
        labelLarge: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }
}
