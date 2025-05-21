import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/theme/theme.dart';
import 'package:shoe_buy/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // Add widget binding - required for splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  
  // Preserve splash screen until app is loaded
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // Todo: Initialize local storage
  // todo: initialkize firebase
  // todo: initialiuze authentication

  // Remove splash screen when app is ready
  FlutterNativeSplash.remove();

  runApp(const App());
}