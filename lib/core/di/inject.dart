import 'dart:async';

import 'package:asroo_store/core/app/cubit/theme_cubit.dart';
import 'package:asroo_store/core/services/graphql/api_service.dart';
import 'package:asroo_store/core/services/graphql/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjection() async {
  await _initCore();
}

Future<void> _initCore() async {
  final Dio dio=DioFactory.getDio();
  sl
    ..registerFactory(() => AppCubit())
    ..registerLazySingleton<ApiService>(() => ApiService(dio));
}
