import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._(); // Prevent instantiation

  /// Light AppBar Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 8,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.6, fontWeight: FontWeight.w600, color: Colors.black),
  );

  /// Dark AppBar Theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 8,
    centerTitle: false,
    scrolledUnderElevation: 8,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.8, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
