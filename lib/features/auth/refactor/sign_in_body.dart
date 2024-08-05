import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_wegiht_helper.dart';
import 'package:asroo_store/features/auth/refactor/login_body.dart';
import 'package:asroo_store/features/auth/widget/auth_title_info.dart';
import 'package:asroo_store/features/auth/widget/dark_and_lang_button.dart';
import 'package:asroo_store/features/auth/widget/login/login_button.dart';
import 'package:asroo_store/features/auth/widget/sign_up/sign_in_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButton(),
            SizedBox(
              height: 15.h,
            ),
            const AuthTitleInfo(
              title: LangKeys.signUp,
              description: LangKeys.signUpWelcome,
            ),
             SizedBox(
              height: 5.h,
            ),
            const UserProfile(),
            SizedBox(
              height: 10.h,
            ),
            const SignInTextForm(),
            SizedBox(
              height: 30.h,
            ),
            const CustomRegisterButton(
              title: LangKeys.signUp,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                  text: LangKeys.youHaveAccount.tr(context),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
