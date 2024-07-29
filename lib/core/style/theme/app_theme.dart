// 2 methods

import 'package:asroo_store/core/style/colors/color_dark.dart';
import 'package:asroo_store/core/style/colors/color_light.dart';
import 'package:asroo_store/core/style/theme/color_extension.dart';
import 'package:asroo_store/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
      extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyImage.dark],
      scaffoldBackgroundColor: ColorsDark.mainColor);
}

ThemeData themeLight() {
  return ThemeData(extensions: const <ThemeExtension<dynamic>>[
    MyColors.light,
    MyImage.light
  ], scaffoldBackgroundColor: ColorsLight.mainColor);
}
