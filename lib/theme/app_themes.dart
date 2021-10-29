import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(

      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      cardColor: Colors.lightBlue,
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          )));

  static ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      cardColor: Colors.black,
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
          )));
}
