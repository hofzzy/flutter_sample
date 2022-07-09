import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black87,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      subtitle2: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      caption: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
      overline: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
    ),
    iconTheme: const IconThemeData(color: Colors.black87),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black87,
      backgroundColor: Colors.white,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.black87),
  );
}
