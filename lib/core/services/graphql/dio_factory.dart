import 'package:asroo_store/core/services/shared/shared_keys.dart';
import 'package:asroo_store/core/services/shared/shared_pref.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const Duration timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeOut;
      dio!.options.receiveTimeout = timeOut;
      dio!.options.headers['Authorization'] =
          'Bearer ${SharedPref().getString(SharedKeys.accessToken)}';
      debugPrint(
          "[USER TOKEN]======>${SharedPref().getString(SharedKeys.accessToken) ?? "[NULL TOKEN]"}");
          addDioInterceptor();
          return dio!;
          
    }else{
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio!.interceptors.add(PrettyDioLogger(
      request: false,
      compact: false,
    ));
  }
}
