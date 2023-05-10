import 'package:flutter/material.dart';

class MyTheme {

  static const Color lightPrimary = Color(0xffB7935f);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color yellow =Color(0xffFACC1D);


  static final ThemeData lightTheme = ThemeData(
    accentColor: Colors.black,
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)

      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 36,),
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedIconTheme:IconThemeData(color: Colors.white, size: 24,),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,

      ),
    textTheme: TextTheme(
      headlineLarge:TextStyle(
        fontSize: 30,
        color: Colors.black,
      ) ,
      bodyMedium:TextStyle(
        fontSize: 25,
          color: Colors.black
      )  ,
      bodySmall: TextStyle(
        fontSize: 20,
          color: Colors.black
      ) ,
    )

  );
  static final ThemeData darkTheme = ThemeData(
    accentColor: yellow,
    primaryColor: darkPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)

      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedIconTheme: IconThemeData(color: yellow, size: 36,),
        selectedLabelStyle: TextStyle(color: yellow),
        unselectedIconTheme:IconThemeData(color: Colors.white, size: 24,),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: yellow,

      ),
    textTheme: TextTheme(
      headlineLarge:TextStyle(
        fontSize: 30,
        color: Colors.white,
      ) ,
      bodyMedium:TextStyle(
        fontSize: 25,
          color: Colors.white
      )  ,
      bodySmall: TextStyle(
        fontSize: 20,
          color: Colors.white
      ) ,
    ),
    cardColor: darkPrimary,

  );


}