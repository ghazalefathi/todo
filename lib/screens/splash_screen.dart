import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/constants/colors.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/public_controller.dart';

class SplashScreen extends GetView<PublicController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.runSplash();
    return SafeArea(
        child: Scaffold(
      backgroundColor: cBgBlack,
      body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/splash.png'),
              Positioned(
                bottom: 10, 
                child: CircularProgressIndicator(
                  color: cBlueLight,
                  strokeWidth: 2, 
                ),
              )
            ],
          )),
    ));
  }
}
