import 'package:asroo_store/core/style/images/app_images_name.dart';
import 'package:flutter/material.dart';


// when lose connection 
class PageUnderBuild extends StatelessWidget {
  const PageUnderBuild({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Image.asset(
          AppImagesName.noNetwork,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
