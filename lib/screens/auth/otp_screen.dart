import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/widgets/MyTextButton.dart';
import 'package:todo/widgets/MyTextField.dart';
import 'package:todo/widgets/my_text_widget.dart';
import 'package:get/get.dart';

class otpScreem extends StatelessWidget {
  const otpScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: cBgBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  text: 'Well Come',
                  color: cW,
                  fontWeight: FontWeight.bold,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  MyText(
                    text: ' plase enter code',
                    color: cW,
                    size: 12,
                  ),
                  MyText(
                    padding: EdgeInsets.only(left: 5),
                    text: '*',
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    size: 12,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // MyTextField(
              //   inputType: TextInputType.number,
              //   borderRadius: 5,
              //   textAlign: TextAlign.center,
              //   hint: '5 5 5 5',
              //   hintColor: cW.withOpacity(.5),
              //   fillColor: cB,
              //   cursorColor: cW,
              //   maxLines: 1,
              //   maxLength: 4,
              //   textStyle: TextStyle(color: cW),
              // ),
              SizedBox(
                height: 10,
              ),
              MyTextButton(
                  onTap: () {
                    Get.toNamed('/otp');
                  },
                  width: Get.width,
                  bgColor: cBlueLight,
            
                  child: MyText(
                    fontWeight: FontWeight.bold,
                    text: 'Submit',
                    color: cBlueDark,
                    size: 18,
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
