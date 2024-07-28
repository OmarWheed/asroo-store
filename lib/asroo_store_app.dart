import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              // Use builder only if you need to use library outside ScreenUtilInit context
              builder: (_, child) {
                return MaterialApp(
                  title: 'Asroo Store',
                  builder: (context, widget) {
                    return Scaffold(
                      body: Builder(
                        builder: (context) {
                          ConnectivityController.instance.init();
                          return widget!;
                        },
                      ),
                    );
                  },
                  home: const Scaffold(
                    body: Center(
                      child: Text("omar"),
                    ),
                  ),
                );
              });
        } else {
          return const MaterialApp(
              title: 'no Network', home: NoNetworkScreen());
        }
      },
    );
  }
}
