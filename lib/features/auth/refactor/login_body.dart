import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_wegiht_helper.dart';
import 'package:asroo_store/core/style/images/app_images_name.dart';
import 'package:asroo_store/features/auth/widget/auth_title_info.dart';
import 'package:asroo_store/features/auth/widget/dark_and_lang_button.dart';
import 'package:asroo_store/features/auth/widget/login/login_button.dart';
import 'package:asroo_store/features/auth/widget/login/login_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButton(),
            SizedBox(
              height: 30.h,
            ),
            const AuthTitleInfo(
              title: LangKeys.login,
              description: LangKeys.welcome,
            ),
            SizedBox(
              height: 30.h,
            ),
            const LoginTextForm(),
            SizedBox(
              height: 30.h,
            ),
            const CustomRegisterButton(
              title: LangKeys.login,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                  text: LangKeys.createAccount.tr(context),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
        radius: 38,
        backgroundImage:  AssetImage(AppImagesName.userAvatar),
        child:  Icon(Icons.camera_alt_rounded));
  }
}
