import 'package:asroo_store/core/language/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class LocaleInit {
  //supported languages
  static const Iterable<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];
  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];


}
