// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SChipTheme{
  SChipTheme._();


//-- light theme
  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity( 0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  //-- dark theme
  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity( 0.4),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );
}