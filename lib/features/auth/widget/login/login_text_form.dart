import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/custom_text_field.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
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
              hintText: (context.translate(LangKeys.email)),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid("")) {
                  return (context.translate(LangKeys.validEmail));
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
              hintText: (context.translate(LangKeys.password)),
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return (context.translate(LangKeys.validPassword));
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
