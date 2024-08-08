import 'package:asroo_store/core/animations/animate_do.dart';
import 'package:asroo_store/core/common/widget/custom_linear_button.dart';
import 'package:asroo_store/core/common/widget/text_app.dart';
import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRegisterButton extends StatelessWidget {
  final String title;
  const CustomRegisterButton({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: CustomLinearButton(
        height: 50.h,
        width: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: TextApp(
          text: context.translate(title),
          theme: context.textStyle
              .copyWith(fontSize: 18.sp, fontWeight: FontWeightHelper.bold),
        ),
      ),
    );
  }
}
