import 'package:flutter/material.dart';

class AppTheme{

static ThemeData lightTheme= ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.blue,
      secondary: Colors.black,
      background: Colors.white,
      onPrimary: Color(0xffB7935F)
    ),
    textTheme: TextTheme(

titleMedium: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    fontFamily: 'ElMessiri'
),
          titleSmall: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontFamily: 'ElMessiri'
          ),
          bodyMedium: TextStyle(
              fontSize: 30,
              color: Colors.black
          ),
      bodyLarge: TextStyle(
          fontSize: 30,
          color: Colors.white
      ),
      ),
    cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: null
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(color: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black)
        ,elevation: 0,
        centerTitle:true,
        titleTextStyle: TextStyle(fontSize: 30,color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:Color(0xffB7935F),
      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Color(0xffFFFFFF),
      showUnselectedLabels: false,
    )

);
static ThemeData darkTheme= ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Color(0xffB7935F),
      secondary: Colors.white,
      background: Color(0xff141A2E),
      onPrimary: Color(0xffFACC1D),
    ),
    textTheme: TextTheme(

        titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'ElMessiri',
            color: Colors.white
        ),
        titleSmall: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: 'ElMessiri'
        ),
        bodyMedium: TextStyle(
            fontSize: 25,
            color: Colors.white
        ),
        bodyLarge: TextStyle(
            fontSize: 30,
            color: Colors.white
        ),
    ),
      cardTheme: CardTheme(
            color: Color(0xff141A2E),
            surfaceTintColor: null
      ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(color: Colors.transparent,
        iconTheme:IconThemeData(color: Colors.white) ,
        elevation: 0,
        centerTitle:true,
        titleTextStyle: TextStyle(fontSize: 30,color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:Color(0xff141A2E),
      selectedItemColor: Color(0xffFACC1D),
      unselectedItemColor: Color(0xffFFFFFF),
      showUnselectedLabels: false,
    )
);



}