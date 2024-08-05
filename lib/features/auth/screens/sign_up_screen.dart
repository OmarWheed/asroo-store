import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/features/auth/refactor/auth_custom_painter.dart';
import 'package:asroo_store/features/auth/refactor/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(
            gradient: LinearGradient(colors: [
          context.color.bluePinkLight!,
          context.color.bluePinkLight!,
          context.color.bluePinkLight!,
          context.color.bluePinkLight!,
        ])),
      ),
      body: const SafeArea(bottom: false, child: SignInBody()),
    );
  }
}
