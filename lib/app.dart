import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ShoeBuyTheme.lightTheme,
      darkTheme: ShoeBuyTheme.darkTheme,
    );
  }
}