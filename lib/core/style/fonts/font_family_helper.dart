import 'package:asroo_store/core/services/shared/shared_keys.dart';
import 'package:asroo_store/core/services/shared/shared_pref.dart';

class FontFamilyHelper {
  FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
    String currentFont = SharedPref().getString(SharedKeys.language)!;
    if (currentFont == 'ar') {
      return cairoArabic;
    }
    return poppinsEnglish;
  }
}
