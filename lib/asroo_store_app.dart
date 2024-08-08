import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/cubit/theme_cubit.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/di/inject.dart';
import 'package:asroo_store/core/language/app_localizations_setup.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/services/shared/shared_keys.dart';
import 'package:asroo_store/core/services/shared/shared_pref.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                  sharedMode: SharedPref().getBoolean(SharedKeys.theme))..getSavedLanguage(),
            child: ScreenUtilInit(
                designSize: const Size(360, 690),
                minTextAdapt: true,
                splitScreenMode: true,
                // Use builder only if you need to use library outside ScreenUtilInit context
                builder: (_, child) {
                  return BlocBuilder<AppCubit, AppState>(
                    buildWhen: (previous, current) {
                      return previous != current;
                    },
                    builder: (context, state) {
                      final cubit = context.read<AppCubit>();
                      return MaterialApp(
                        theme: cubit.isDark ? themeLight() : themeDark(),
                        locale: Locale(cubit.currentLang),
                        initialRoute: AppRoutes.login,
                        onGenerateRoute: AppRoutes.onGenerate,
                        supportedLocales: AppLocalizationsSetup.supportedLocales,
                        localeResolutionCallback:
                            (deviceLocale, supportedLocales) {
                          for (final locale in supportedLocales) {
                            if (deviceLocale != null &&
                                locale.languageCode ==
                                    deviceLocale.languageCode) {
                              return locale;
                            }
                          }
                          return supportedLocales.first;
                        },
                        localizationsDelegates:
                            AppLocalizationsSetup.localizationsDelegates,
                        title: 'Asroo Store',
                        builder: (context, widget) {
                          return GestureDetector(
                            onTap: () =>
                                FocusManager.instance.primaryFocus!.unfocus(),
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
                                children: [],
                              ),
                            )),
                      );
                    },
                  );
                }),
          );
        } else {
          //! no network connection available
          return const MaterialApp(
              title: 'no Network', home: NoNetworkScreen());
        }
      },
    );
  }
}
