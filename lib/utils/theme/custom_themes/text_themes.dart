import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle(
        fontSize: 52.9, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle(
        fontSize: 18.8, fontWeight: FontWeight.w600, color: Colors.grey[800]),
    titleLarge: const TextStyle(
        fontSize: 36.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black54),
    titleSmall: TextStyle(
        fontSize: 10.0, fontWeight: FontWeight.w400, color: Colors.grey[700]),
    bodyLarge: const TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey[700]),
    bodySmall: TextStyle(
        fontSize: 14.6,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.65)),
    labelLarge: const TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.85)),
  );

  // Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle(
        fontSize: 18.9, fontWeight: FontWeight.w600, color: Colors.grey[300]),
    titleLarge: const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white70),
    titleSmall: TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey[400]),
    bodyLarge: const TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: const TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white70),
    bodySmall: TextStyle(
        fontSize: 14.6,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),
    labelLarge: const TextStyle(
        fontSize: 12.6, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.85)),
  );
}
