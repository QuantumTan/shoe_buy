import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/text_theme.dart';

class ShoeBuyTheme{
  ShoeBuyTheme._();

  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(

    ),
  );
  static ThemeData darktheme = ThemeData(

     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
  );
}