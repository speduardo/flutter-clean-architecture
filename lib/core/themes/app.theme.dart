import 'package:flutter/material.dart';

enum AppTheme {
  WhiteLight,
}

final appThemeData = {
  AppTheme.WhiteLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.grey[100],
    primaryIconTheme: IconThemeData(
      color: Colors.black,
    ),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.deepOrange,
        fontSize: 16.0,
      ),
    ),

    fontFamily: 'RobotoMono',

    accentColor: Colors.deepOrange,
    backgroundColor: Colors.white,
    canvasColor: Colors.grey[100],
    //primarySwatch: Colors.deepOrange,

    textTheme: TextTheme(
      //headline1: TextStyle(color: Colors.black, fontSize: 24),
      //headline2: TextStyle(color: Colors.deepOrange, fontSize: 22),
      //headline3: TextStyle(color: Colors.grey, fontSize: 20),
      //headline4: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
      //headline5: TextStyle(color: Colors.yellow, fontSize: 16),
      //headline6: TextStyle(color: Colors.indigo, fontSize: 12),
      bodyText1: TextStyle(color: Colors.black, fontSize: 20),
      bodyText2: TextStyle(color: Colors.black, fontSize: 14),
      //bodyText1: TextStyle(color: Colors.deepOrange,),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Colors.deepOrange),
      unselectedIconTheme: IconThemeData(color: Colors.grey[600]),
    ),

  ),
};