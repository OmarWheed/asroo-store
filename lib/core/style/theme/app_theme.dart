import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/theme/color_extension.dart';
import 'package:asroo_store/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyImage.dark],
    textTheme: TextTheme(
      displaySmall: TextStyle(
          fontSize: 14,
          color: ColorsDark.white,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily()),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyImage.light],
    textTheme: TextTheme(
      displaySmall: TextStyle(
          fontSize: 14,
          color: ColorsLight.black,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily()),
    ),
  );
}
