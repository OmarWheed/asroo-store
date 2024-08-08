import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleInfo extends StatelessWidget {
  final String title;
  final String description;
  const AuthTitleInfo(
      {super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
              text: context.translate(title),
              theme: context.textStyle.copyWith(
                  fontSize: 24.sp,
                  color: context.color.textColor,
                  fontWeight: FontWeightHelper.bold)),
          SizedBox(
            height: 10.h,
          ),
          TextApp(
            text: context.translate(description),
            theme: context.textStyle
                .copyWith(fontSize: 14.sp, color: context.color.textColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
