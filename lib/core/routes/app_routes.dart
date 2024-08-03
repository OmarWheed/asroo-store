import 'package:asroo_store/core/common/screens/Page_under_build.dart';
import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/features/auth/screens/login_screen.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = "login";
  static const String signUp = "signUp";

  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.login:
        return BaseRoute(page: const LoginScreen());
      default:
        return BaseRoute(page: const PageUnderBuild());
    }
  }
}
