import 'package:asroo_store/core/common/screens/Page_under_build.dart';
import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/testone.dart';
import 'package:asroo_store/testtwo.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const String testOne = "testOne";
  static const String testTwo = "testTwo";

  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.testOne:
        return BaseRoute(page: TestOne());
      case AppRoutes.testTwo:
        return BaseRoute(page: TestTwo());
      default:
        return BaseRoute(page: PageUnderBuild());
    }
  }
}
