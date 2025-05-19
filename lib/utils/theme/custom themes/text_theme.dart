import 'package:flutter/material.dart';

class STextTheme {
  STextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // Display styles
    displayLarge: const TextStyle().copyWith(fontSize: 57.0, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: const TextStyle().copyWith(fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.black),
    displaySmall: const TextStyle().copyWith(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.black),
    
    // Headline styles
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    
    // Title styles
    titleLarge: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87),
    
    // Body styles
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black87),
    
    // Label styles
    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black),
    labelSmall: const TextStyle().copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.black87),
  );
  
  static TextTheme darkTextTheme = TextTheme(
    // Display styles
    displayLarge: const TextStyle().copyWith(fontSize: 57.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: const TextStyle().copyWith(fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.white),
    displaySmall: const TextStyle().copyWith(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),
    
    // Headline styles
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    
    // Title styles
    titleLarge: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white70),
    
    // Body styles
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white70),
    
    // Label styles
    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.white),
    labelSmall: const TextStyle().copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.white70),
  );
}