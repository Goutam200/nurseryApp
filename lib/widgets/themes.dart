import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.green,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.lalezarTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 19),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      textSelectionColor: Colors.black,
      cardTheme: CardTheme(elevation: 5));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      textSelectionColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.green,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 19),
      ),
      listTileTheme: ListTileThemeData(tileColor: Colors.black54),
      cardTheme: CardTheme(color: Colors.black54)
      //scaffoldBackgroundColor: Colors.black
      );
}
