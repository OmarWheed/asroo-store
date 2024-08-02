class FontFamilyHelper {
  FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
    String currentFont = 'ar';
    if (currentFont == 'ar') {
      return cairoArabic;
    }
    return poppinsEnglish;
  }
}
