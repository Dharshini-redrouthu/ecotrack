import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: const Color(0xFF00C853),
    scaffoldBackgroundColor: const Color(0xFF0B1F14),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF00C853),
      secondary: Color(0xFF69F0AE),
      surface: Color(0xFF102A1C),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
  );
}