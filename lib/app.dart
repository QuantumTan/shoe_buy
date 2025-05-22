import 'package:flutter/material.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/on_boarding.dart';
import 'package:shoe_buy/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ShoeBuyTheme.lightTheme,
      darkTheme: ShoeBuyTheme.darkTheme,
      home: const onBoardingScreen(),
      
    );
  }
}