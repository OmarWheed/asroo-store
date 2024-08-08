import 'dart:ui';

import 'package:asroo_store/core/services/shared/shared_keys.dart';
import 'package:asroo_store/core/services/shared/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;
  String currentLang = "en";

  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref().setBoolean(SharedKeys.theme, isDark).then(
        (value) {
          emit(AppState.themeChangeMode(isDark: isDark));
        },
      );
    }
  }

  void getSavedLanguage() {
    final result = SharedPref().containPreference(SharedKeys.language)
        ? SharedPref().getString(SharedKeys.language)
        : "en";

    currentLang = result!;
    emit(AppState.languageChange(locale: Locale(currentLang)));
  }

  Future<void> _changeLang(String langCode) async {
    await SharedPref().setString(SharedKeys.language, langCode);
    currentLang = langCode;
    emit(AppState.languageChange(locale: Locale(currentLang)));
  }

  void toArabic()=>_changeLang("ar");
  void toEnglish()=>_changeLang("en");
}
