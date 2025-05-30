import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shoe_buy/app.dart';

void main() async {
  // add widget binding
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // preserve splash screen until app is loaded
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo: Initialize local storage
  // todo: initialkize firebase
  // todo: initialiuze authentication

  // remove splash screen when app is ready
  // FlutterNativeSplash.remove();

  runApp(const App());
}
