import 'package:flutter/material.dart';

class CustomTheme {
  //light theme
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.red,
      focusColor: Colors.green,
      fontFamily: 'Montserrat',
      //3
      buttonTheme: ButtonThemeData(
        // 4
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purpleAccent,
      ),
    );
  }

  //dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.orange,
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.red,
      focusColor: Colors.green,
      fontFamily: 'Montserrat',
      //3
      buttonTheme: ButtonThemeData(
        // 4
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purpleAccent,
      ),
    );
  }
}
