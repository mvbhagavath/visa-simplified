import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VittColors {
  VittColors._();

  static const primaryBlue = Color(0xFF3A76FB);
  static const primaryBlueDisabled = Color(0xFF7BA4FF);
  static const headerBlue = Color(0xFF183982);
  static const textButtonBlue = Color(0xFF0640C1);
  static const inputBorderBlue = Color(0xFF3A76FB);
  static const offWhiteBackground = Color(0xFFF8F8FA);
  static const cardGrey = Color(0xFF202020);
  static const disabledInput = Color(0xFF9EA1B6);
  static const inactiveIndicatorGrey = Color(0xFFC4C4C4);
  static const filterChipDisabledBg = Color(0xFFF4F4F4);
  static const placeholderGrey = Color(0xFF817474);
  static const errorRed = Color(0xFFCA4D4D);
  static const cancelButtonRed = Color(0xFFCC0000);
  static const appBarTitleGrey = Color(0xFF535353);
  static const blackBodyText = Color(0xFF323232);
  static const subTextGrey = Color(0xFF767676);
  static const successGreen = Color(0xFF008135);
  static const clearOrange = Color(0xFFFEAB32);

  static const quickViewLightGradient = LinearGradient(colors: [
    Color(0xFF122F72),
    Color(0xFF3A76FB),
  ], begin: FractionalOffset.topLeft, end: FractionalOffset.topRight);
}

class VittTheme {
  VittTheme._();

  static TextTheme textTheme = TextTheme(
    headline1: TextStyle(fontSize: 42.sp),
    headline2: TextStyle(fontSize: 35.sp),
    headline3: TextStyle(fontSize: 29.sp),
    headline4: TextStyle(fontSize: 24.sp),
    headline5: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
    headline6: TextStyle(fontSize: 17.sp),
    bodyText1: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
    bodyText2: TextStyle(fontSize: 12.sp),
    subtitle1: TextStyle(fontSize: 10.sp),
    button: TextStyle(fontSize: 12.sp),
  );

  static final ThemeData defaultTheme = ThemeData(
    brightness: Brightness.light,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: VittColors.textButtonBlue,
        // textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: VittColors.primaryBlue,
      textTheme: ButtonTextTheme.primary,
    ),
    disabledColor: VittColors.disabledInput,
    textTheme: textTheme.apply(
      fontFamily: 'Lato',
    ),
    backgroundColor: VittColors.offWhiteBackground,
    scaffoldBackgroundColor: VittColors.offWhiteBackground,
  );
}
