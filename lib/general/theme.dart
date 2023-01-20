import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
    ),
    iconTheme: IconThemeData(color: Colors.white),
    color: Colors.pink,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.pink[400],
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.pink[400],
    ),
  ),
);
