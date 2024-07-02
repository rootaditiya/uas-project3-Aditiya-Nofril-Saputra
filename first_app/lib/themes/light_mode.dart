import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    surface: Colors.grey.shade300, // Added surface color
    onSurface: Colors.grey.shade700, // Added onSurface color
  ),
);