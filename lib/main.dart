import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/env_variable.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init env
  await EnvVariable.instance.init(type: EnvTypeEnum.dev);
  //init firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //portrait Device Orientation
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(const AsrooStoreApp());
    },
  );
}
