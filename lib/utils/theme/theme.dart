import 'package:ecommer/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommer/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class CusTheme {
  CusTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CusTextTheme.lightTheme,
    elevatedButtonTheme: CusElevatedBtnTheme.lightTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CusTextTheme.darkTheme,
    elevatedButtonTheme: CusElevatedBtnTheme.darkTheme,
  );
}
