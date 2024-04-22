import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 93, 17, 139);
  static const Color secondary = Colors.white;
  //static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData().copyWith(
      // Color primario
      primaryColor: primary,
      // AppBar Theme
      appBarTheme: const AppBarTheme(
          backgroundColor: primary, elevation: 0, foregroundColor: secondary),
      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      //FloatingActionButtons Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5, foregroundColor: secondary),

      //ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0,
              backgroundColor: primary,
              foregroundColor: secondary)),

      //Form Inputs
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
}
