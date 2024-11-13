import 'package:flutter/material.dart';
import 'package:macedon/static/color.dart';

class CustomTheme {
  ThemeData themedata = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade200,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber, //Color(0xfffac50e),
        // onPrimary: Colors.green,
        // primaryContainer: Colors.yellow.shade100,
        // onPrimaryContainer: Colors.green,
        // onSecondaryContainer: Colors.red,
        // secondary: Colors.green,
        // onSecondary: Colors.green,
        // tertiary: Colors.amber,
        // onTertiary: Colors.green,
        // brightness: Brightness.light,
        // primary: Colors.white,
        // error: Colors.red,
        // onError: Colors.white,
        background: Colors.white70,
        onBackground: Colors.white,
        // surface: Colors.white,
        // onSurface: Colors.black54),
      ),
      useMaterial3: true,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            height: 0.7),
        displayMedium: TextStyle(color: Colors.black, fontSize: 35, height: .2),
        displaySmall: TextStyle(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w900),
        headlineLarge: TextStyle(),
        headlineMedium: TextStyle(),
        headlineSmall: TextStyle(),
        titleLarge: TextStyle(
            color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(),
        titleSmall: TextStyle(),
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        labelLarge: TextStyle(
            color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.black38,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
        labelSmall:
            TextStyle(color: Colors.black26, fontSize: 12, letterSpacing: 0.3),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colo.blue,
          iconTheme: IconThemeData(color: Colo.white),
          actionsIconTheme: IconThemeData(
            color: Colo.white,
          ),
          titleTextStyle: TextStyle(
              color: Colo.white, fontWeight: FontWeight.bold, fontSize: 18)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide.none)),
              foregroundColor: WidgetStatePropertyAll(Colo.black),
              backgroundColor: WidgetStatePropertyAll(Colo.yellowshade300))),
      textButtonTheme: const TextButtonThemeData(style: ButtonStyle()));
}
