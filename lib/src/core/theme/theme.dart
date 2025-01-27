import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor:Color(0XFFFFFFFF) ,
  iconTheme: IconThemeData(color: Color(0XFF000000)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor:Color(0XFFFFFFFF) ,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
      color: Colors.black,),
    unselectedIconTheme: IconThemeData(
      color: Colors.grey,  ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
  )
);
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor:Color(0XFF000000) ,

  iconTheme: IconThemeData(color: Color(0XFFFFFFFF)),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor:Color(0XFF000000) ,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    selectedIconTheme: IconThemeData(
      color: Colors.white,),
    unselectedIconTheme: IconThemeData(
      color: Colors.grey,  ),
  ),

);