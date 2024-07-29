import 'package:asroo_store/core/style/images/app_images_name.dart';
import 'package:flutter/material.dart';

class MyImage extends ThemeExtension<MyImage> {
  final String? image;

  const MyImage({required this.image});

  @override
  ThemeExtension<MyImage> copyWith() {
    return MyImage(image: image);
  }

  @override
  ThemeExtension<MyImage> lerp(
      covariant ThemeExtension<MyImage>? other, double t) {
    if (other is! MyImage) {
      return this;
    }
    return MyImage(image: image);
  }

  static const MyImage light =  MyImage(image: AppImagesName.lightTest);

  static const MyImage dark =  MyImage(image: AppImagesName.darkTest);
}
