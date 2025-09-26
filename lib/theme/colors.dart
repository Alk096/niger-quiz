import 'package:flutter/material.dart';

class UrbainDriverColors {
  // colorshame
  static ColorScheme toColorScheme() {
    return ColorScheme(
      primary: primary,
      secondary: secondary,
      surface: surface,
      background: background,
      error: error,
      onPrimary: textPrimary,
      onSecondary: textSecondary,
      onSurface: textPrimary,
      onError: Colors.white,
      brightness: Brightness.light,
    );
  }
  
  static const Color primary = Color.fromARGB(255, 25, 94, 230);
  static const Color secondary= Color.fromARGB(255, 26, 188, 156);
  static const Color accent = Color(0xFF00C853);

  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0x002C3E50);

  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;

  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFFA000);
}