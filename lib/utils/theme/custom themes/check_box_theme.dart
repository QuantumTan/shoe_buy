import 'package:flutter/material.dart';

class SCheckBoxTheme{
  SCheckBoxTheme._();

//--light mode
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), 
    checkColor: WidgetStateProperty.resolveWith((states){
        if(states.contains(WidgetState.selected)){
          return Colors.white;
        } else {
          return Colors.black;
        }
    }),

    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );

//--dark mode
    static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), 
    checkColor: WidgetStateProperty.resolveWith((states){
        if(states.contains(WidgetState.selected)){
          return Colors.white;
        } else {
          return Colors.black;
        }
    }),

    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );
}