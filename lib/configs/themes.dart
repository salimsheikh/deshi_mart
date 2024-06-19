import 'package:deshi_mart/configs/colors.dart';
import 'package:flutter/material.dart';

var ligthTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primaryContainer: primaryColor,
    onPrimaryContainer: primaryContainerColor,
    secondaryContainer: primaryContainerColor,
    onSecondaryContainer: onBackgroundColor,
    error: Color(0xffb00020),
    onError: Colors.white,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: darkPrimaryColor,
    surfaceTintColor: darkPrimaryContaainer,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    headlineSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: onBackgroundColor,
    ),
  ),
);

var darkTheme = ThemeData(
  brightness: Brightness.dark,
);
