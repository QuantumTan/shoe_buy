import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class SHelperFunctions {
  SHelperFunctions._();

  static Color? getColor(String value){
    if (value == 'Green'){
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Grey' || value == 'Gray') {
      return Colors.grey;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else {
      return null;
    }
  }


  /// Show snackbar
  static void showSnackBar({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert (String title, String message){
    showDialog(
      context: Get.context!,
     builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
     });

  }

  /// Navigate to a screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength){
  if(text.length <= maxLength){
    return text;
  } else {
    return '$text.substring(0, maxLength)}...';
  }
}


  /// Check if dark mode is enabled
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context){
    return MediaQuery.of(Get.context!).size;
  }


  /// Get color based on theme mode
  static Color getThemeColor(BuildContext context, Color lightModeColor, Color darkModeColor) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ? darkModeColor : lightModeColor;
  }


  /// Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static String getFormattedDate(DateTime date, {String format= 'dd MMM yyyy'}){
    return DateFormat(format).format(date);

  }  

  static List<S> removeDuplicates<S>(List<S> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize){
    final wrappedList = <Widget>[];

    for (var i = 0; i < widgets.length; i += rowSize){
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
  
}