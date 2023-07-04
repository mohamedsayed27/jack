import 'package:flutter/material.dart';

class AppColors{
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
  static const primaryColor = Color(0xff24C6C9);
  static const whitColor = Color(0xffFFFFFF);
  static const pinkColor = Color(0xffe94b53);
  static const authTextFieldFillColor =  Color(0xffF9F9F9);
  static const orangeColor = Color(0xffef794a);
  static const greyTextColor = Color(0xff333030);
  static const greyDealsContainerColor = Color(0xffE7E7E7);
  static const lightOrangeColor = Color(0xfff4a68b);
  static const greySearchTextFilledColor =  Color(0xfff8f6f8);
  static const greyColor = Color(0xff989799);
  static const darkIconsOrFontColor =  Color(0xff2d2d2d);
  static const bottomNavBarGreyIconColor =  Color(0xffdf876a);

}