import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunction {
  Color getColorFromHex(String hexColor) {
    final int colorInt = int.parse(hexColor.substring(1), radix: 16);
    return Color(colorInt);
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness  == Brightness.dark;
  }
}
