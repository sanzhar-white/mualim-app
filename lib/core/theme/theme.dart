import 'package:flutter/material.dart';

final primaryColor = Color(0xFF00BF63);
final themeData = ThemeData(
  primaryColor: primaryColor,

  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    secondary: Color(0xff639154),
    primaryContainer: Colors.grey.shade200,
    background: Colors.white,
    surface: Colors.white,
    onBackground: Colors.black,
  ),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
  ),
);
