import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.green,
  ),
  backgroundColor: Colors.greenAccent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.green,
    elevation: 15.0,
    selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40),
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    selectedItemColor: Colors.amberAccent,
    unselectedIconTheme: IconThemeData(
      color: Colors.green,
    ),
    unselectedItemColor: Colors.green,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  ),
);

final kLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.orange,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
      selectedIconTheme: IconThemeData(color: Colors.orangeAccent, size: 40),
      // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      selectedItemColor: Colors.orangeAccent,
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 0,
        indicatorColor: Colors.orange));
