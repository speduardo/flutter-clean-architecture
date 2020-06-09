import 'package:flutter/material.dart';

enum AppTheme {
  WhiteLight,
}

final appThemeData = {
  AppTheme.WhiteLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.grey[50],
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
    canvasColor: Colors.grey[50],
    //primarySwatch: Colors.deepOrange,

    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.black,),
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