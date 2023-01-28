


import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.teal;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: primary,
        ),
        //Text button theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primary
          )
        ),
         //FloatingActionButton theme
         floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
         ),
         elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            shape: const StadiumBorder(),
          )
         ),
         inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: primary
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
          ),
          border: OutlineInputBorder(
             borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
          )
         )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: primary,
        ),
        scaffoldBackgroundColor: Colors.black
  );
}