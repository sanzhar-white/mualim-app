import 'package:flutter/material.dart';

final primaryColor = Color(0xFF00BF63);
final themeData = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  ),
);
