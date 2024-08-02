import 'package:asroo_store/core/style/images/app_images_name.dart';
import 'package:flutter/material.dart';

class MyImage extends ThemeExtension<MyImage> {
const MyImage({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyImage> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyImage(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyImage> lerp(
    covariant ThemeExtension<MyImage>? other,
    double t,
  ) {
    if (other is! MyImage) {
      return this;
    }
    return MyImage(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyImage dark = MyImage(
    bigNavBar: AppImagesName.bigIconNavBarDark,
    homeBg: AppImagesName.homeBgDark,
  );
  static const MyImage light = MyImage(
    bigNavBar: AppImagesName.bigIconNavBarLight,
    homeBg: AppImagesName.homeBgLight,
  );
}
