import 'package:flutter/material.dart';

class ColorTheme {
  static Color mainClr = const Color.fromRGBO(19, 29, 50, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color black = const Color.fromARGB(255, 0, 0, 0);
  static Color red = const Color.fromARGB(255, 209, 0, 0);
  static Color green = const Color.fromRGBO(0, 194, 84, 1);
  static Color grey = const Color.fromRGBO(152, 162, 179, 1);
  

  static Map<int, Color> primaryColorsShades = {
    50: mainClr.withOpacity(.1),
    100: mainClr.withOpacity(.2),
    200: mainClr.withOpacity(.3),
    300: mainClr.withOpacity(.4),
    400: mainClr.withOpacity(.5),
    500: mainClr.withOpacity(.6),
    600: mainClr.withOpacity(.7),
    700: mainClr.withOpacity(.8),
    800: mainClr.withOpacity(.9),
    900: mainClr.withOpacity(1),
  };

  static var primary;
}

ThemeData appTheme = ThemeData(
  // Define the default Brightness and Colors
  primarySwatch:
      MaterialColor(ColorTheme.mainClr.value, ColorTheme.primaryColorsShades),
  // Define the default Font Family
  fontFamily: 'Lato',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  // textTheme: const TextTheme(
  //   bodyText1: TextStyle(
  //       fontWeight: FontWeight.normal, color: Colors.black, fontSize: 16),
  //   bodyText2: TextStyle(color: Colors.black, fontSize: 15.0),
  //   headline1: TextStyle(
  //       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
  //   headline2: TextStyle(
  //       color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  //   headline3: TextStyle(
  //       color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
  //   headline4: TextStyle(
  //       color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  //   headline5: TextStyle(
  //       color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
  //   headline6: TextStyle(
  //       color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
  //   subtitle1: TextStyle(
  //       fontWeight: FontWeight.normal, color: Colors.black, fontSize: 16),
  //   subtitle2: TextStyle(color: Colors.white, fontSize: 15.0),
  // ),
  buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
);
