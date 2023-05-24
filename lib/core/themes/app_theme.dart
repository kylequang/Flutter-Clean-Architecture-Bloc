import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.grey[900],
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  );
}
