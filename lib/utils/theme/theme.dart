import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/appbar_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/bottom_sheet_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/check_box_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/chip_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/elevated_button_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/outlines_button.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/text_field_theme.dart';
import 'package:shoe_buy/utils/theme/custom%20themes/text_theme.dart';

class ShoeBuyTheme{
  ShoeBuyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: SAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: SCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: SChipTheme.lightChipThemeData,
    outlinedButtonTheme: SOutlinedButton.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFieldTheme.lightInputDeco,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: SAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: SCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: SChipTheme.darkChipThemeData,
    outlinedButtonTheme: SOutlinedButton.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFieldTheme.lightInputDeco,
  );
}