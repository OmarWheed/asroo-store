import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/custom_linear_button.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_wegiht_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButton extends StatelessWidget {
  const DarkAndLangButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomFadeInLeft(
          duration: 200,
          child: CustomLinearButton(
              child: const Icon(Icons.light_mode_rounded), onPressed: () {}),
        ),
        const Spacer(),
        CustomFadeInRight(
          duration: 200,
          child: CustomLinearButton(
              height: 44.h,
              width: 100.w,
              child: TextApp(
                  text: LangKeys.language.tr(context),
                  theme: context.textStyle.copyWith(
                      fontSize: 16.sp, fontWeight: FontWeightHelper.bold)),
              onPressed: () {}),
        ),
      ],
    );
  }
}
