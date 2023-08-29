import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemedata {
  static const Color LightColor = Color(0xFFB7935F);
  static const Color DarkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: LightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: LightColor
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle:GoogleFonts.elMessiri(
        color: Color(0xff242424),
      fontSize: 20,
      fontWeight: FontWeight.w400),
    ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.elMessiri(
            color: Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.elMessiri(
            color: Color(0xff242424),
            fontSize: 25,
            fontWeight: FontWeight.w600),
        displaySmall: GoogleFonts.elMessiri(
            color: Color(0xff242424),
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,));
  static ThemeData darkTheme = ThemeData(
      primaryColor: DarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: DarkColor,
          onPrimary: yellowColor,
          secondary: DarkColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: yellowColor,
          surface: Colors.white,
          onSurface: DarkColor),
      textTheme: TextTheme(
          displayLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          displayMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          titleSmall: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          displaySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w300, color: yellowColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkColor,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.white,
          selectedItemColor: yellowColor,
          selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.quicksand(
            fontSize: 12,
          )),
      appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
      color: yellowColor
      ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
  );
}
