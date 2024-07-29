import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_wegiht_helper.dart';
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
                  home: Scaffold(
                      appBar: AppBar(
                        title: const Text('Asroo Store'),
                        centerTitle: true,
                      ),
                      body: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              "Old Font",
                              style: TextStyle(fontSize: 20.sp),
                            ),
                            Text(
                              "خط قديم",
                              style: TextStyle(fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Text(
                              "New Font",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: FontFamilyHelper.poppinsEnglish,
                                  fontWeight: FontWeightHelper.regular),
                            ),
                            Text(
                              "خط جديد",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: FontFamilyHelper.cairoArabic,
                                  fontWeight: FontWeightHelper.regular),
                            ),
                          ],
                        ),
                      )),
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
