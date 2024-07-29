import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future <dynamic>pushNamed({required String routeName, arg}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arg);
  }

  Future<dynamic> pushReplacementNamed({required String routeName, arg}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arg);
  }

  Future <dynamic>pushNamedAndRemoveUntil({required String routeName, arg}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (routes) => false);
  }

  void pop() => Navigator.of(this).pop();
}
