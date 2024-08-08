import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/bloc_observer.dart';
import 'package:asroo_store/core/app/env_variable.dart';
import 'package:asroo_store/core/di/inject.dart';
import 'package:asroo_store/core/services/shared/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init env
  await EnvVariable.instance.init(type: EnvTypeEnum.dev);
  //init firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //shared preference
  await SharedPref().instantiatePreferences();
  //Injection
  await setupInjection();
  //bloc observer
  Bloc.observer = AppBlocObserver();
  //portrait Device Orientation
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(const AsrooStoreApp());
    },
  );
}
