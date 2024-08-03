import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/language/app_localizations_setup.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';

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
                  theme: themeDark(),
                  initialRoute: AppRoutes.login,
                  onGenerateRoute: AppRoutes.onGenerate,
                  supportedLocales: LocaleInit.supportedLocales,
                  localeResolutionCallback: (deviceLocale, supportedLocales) {
                    for (final locale in supportedLocales) {
                      if (deviceLocale != null &&
                          locale.languageCode == deviceLocale.languageCode) {
                        return locale;
                      }
                    }
                    return supportedLocales.first;
                  },
                  localizationsDelegates: LocaleInit.localizationsDelegates,
                  title: 'Asroo Store',
                  builder: (context, widget) {
                    return GestureDetector(
                      onTap: ()=> FocusManager.instance.primaryFocus!.unfocus(),
                      child: Scaffold(
                        body: Builder(
                          builder: (context) {
                            ConnectivityController.instance.init();
                            return widget!;
                          },
                        ),
                      ),
                    );
                  },
                  home: Scaffold(
                      appBar: AppBar(
                        title: const Text('Asroo Store'),
                        centerTitle: true,
                      ),
                      body: const SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                           
                          ],
                        ),
                      )),
                );
              });
        } else {
          //! no network connection available
          return const MaterialApp(
              title: 'no Network', home: NoNetworkScreen());
        }
      },
    );
  }
}
