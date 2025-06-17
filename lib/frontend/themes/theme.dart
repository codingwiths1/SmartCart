import 'package:ecommerce_app_thumbnail/frontend/themes/text_theme.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TTheme {
  //........................... Light Theme ............................//

  static var lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        onPrimary: navLColors,
        onSecondary: dBColor,
        primary: blackColor,
        secondary: whiteColor,
        inversePrimary: blueColor,
        tertiary: dGrey,
        onTertiary: whiteColor
      ),
      appBarTheme: AppBarTheme(centerTitle: true,
        backgroundColor: lBColor,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      // fontFamily: "Poppins",
      scaffoldBackgroundColor: lBColor,
      textTheme: TTextTheme.lTextTheme);


  
  //........................... Dark Theme ............................//

  static var darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      inversePrimary: whiteColor,
      tertiary: lGrey,
      primary: whiteColor,
      onPrimary: navDColors,
      secondary: blackColor,
      onSecondary: lBColor,
      onTertiary: cBlackColor
    ),
    useMaterial3: true,
    appBarTheme: AppBarTheme(centerTitle: true,
        backgroundColor: dBColor, scrolledUnderElevation: 0, elevation: 0),
    // fontFamily: "Poppins",
    scaffoldBackgroundColor: dBColor,
    textTheme: TTextTheme.dTextTheme,

  );
}
