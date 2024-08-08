import 'dart:async';

import 'package:asroo_store/core/app/cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjection() async {
  await _initCore();
}

Future<void> _initCore() async {
  sl.registerFactory(() => AppCubit());
}
