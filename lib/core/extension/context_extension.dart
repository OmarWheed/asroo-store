import 'package:asroo_store/core/language/app_localizations.dart';
import 'package:asroo_store/core/style/theme/color_extension.dart';
import 'package:asroo_store/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //! color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  //! image
  MyImage get image => Theme.of(this).extension<MyImage>()!;
  //!text 
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  //!Navigation
  Future<dynamic> pushNamed({required String routeName, arg}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arg);
  }

  Future<dynamic> pushReplacementNamed({required String routeName, arg}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arg);
  }

  Future<dynamic> pushNamedAndRemoveUntil({required String routeName, arg}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (routes) => false);
  }

  void pop() => Navigator.of(this).pop();
}

extension translateEx on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
