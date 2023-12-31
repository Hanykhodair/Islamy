import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 45,
          fontWeight: FontWeight.w700,
          color: blackColor,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 60,
          fontWeight: FontWeight.w900,
          color: blackColor,
        )
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      backgroundColor: primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
  ),);
  static ThemeData darkTheme =ThemeData();

}