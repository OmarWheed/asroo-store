import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/custom_text_field.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInTextForm extends StatefulWidget {
  const SignInTextForm({super.key});

  @override
  State<SignInTextForm> createState() => _SignInTextFormState();
}

class _SignInTextFormState extends State<SignInTextForm> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: LangKeys.fullName.tr(context),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (!AppRegex.isEmailValid("")) {
                  return LangKeys.validEmail.tr(context);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 15.h),
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: LangKeys.email.tr(context),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid("")) {
                  return LangKeys.validEmail.tr(context);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 15.h),
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: TextEditingController(),
              obscureText: showPassword,
              hintText: LangKeys.password.tr(context),
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return LangKeys.validPassword.tr(context);
                }
                return null;
              },
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                    color: context.color.textColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
