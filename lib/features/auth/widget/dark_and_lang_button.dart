import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/app/cubit/theme_cubit.dart';
import 'package:asroo_store/core/common/widget/custom_linear_button.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/app_localizations.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButton extends StatelessWidget {
  const DarkAndLangButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AppCubit>(context);
    return Row(
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInLeft(
              duration: 200,
              child: CustomLinearButton(
                onPressed: cubit.changeAppThemeMode,
                child: Icon(cubit.isDark
                    ? Icons.light_mode_rounded
                    : Icons.dark_mode_rounded),
              ),
            );
          },
        ),
        const Spacer(),
        CustomFadeInRight(
          duration: 200,
          child: CustomLinearButton(
              height: 44.h,
              width: 100.w,
              child: TextApp(
                  text: (context.translate(LangKeys.language)),
                  theme: context.textStyle.copyWith(
                      fontSize: 16.sp, fontWeight: FontWeightHelper.bold)),
              onPressed: () {
                if(AppLocalizations.of(context)!.isEnLocale){
                  cubit.toArabic();
                }else{
                  cubit.toEnglish();
                }
              }),
        ),
      ],
    );
  }
}
