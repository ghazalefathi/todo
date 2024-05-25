import 'package:flutter/material.dart';
import 'package:todo/screens/main_screens/one_screen.dart';

import 'package:todo/widgets/MyTextField.dart';

import 'package:todo/widgets/my_text_widget.dart';
import '../../constants/colors.dart';
import 'package:get/get.dart';

import '../../widgets/MyTextButton.dart';
import 'forgot_passwor_screen.dart';

class LogInScreem extends StatelessWidget {
  const LogInScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: cPink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: cW.withOpacity(.7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: cW),
                    child: Image.asset(
                      width: 40,
                      height: 40,
                      'assets/images/user.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  MyTextField(
                    txtColor: cB,
                    borderRadius: 2,
                    fillColor: cW,
                    prefixIcon: Container(
                      child: Icon(Icons.person, color: cB.withOpacity(.5)),
                    ),
                    textAlign: TextAlign.left,
                    hint: 'Email ID',
                    hintColor: cB.withOpacity(.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                      txtColor: cB,
                      hintColor: cB.withOpacity(.5),
                      borderRadius: 2,
                      prefixIcon: Container(
                        child: Icon(Icons.lock, color: cB.withOpacity(.5)),
                      ),
                      fillColor: cW,
                      textAlign: TextAlign.left,
                      hint: 'Password'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextButton(
                          onTap: () {
                            Get.to(ForgotPasswordScreen());
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: MyText(
                              text: 'Forgot Password?',
                              fontWeight: FontWeight.bold,
                              color: cPink,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          MyTextButton(
              onTap: () {
                Get.to(oneScreen());
              },
              height: 50,
              width: Get.width,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 20),
              bgColor: cW.withOpacity(.7),
              child: MyText(
                text: 'LOG IN',
                color: cPink,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 15,
          ),
          MyText(
            text: '- OR Continue with -',
            color: cW,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          MyTextButton(
            padding: EdgeInsets.zero,
            onTap: () {},
            child: Image.asset(
              'assets/images/google.png',
              width: 40,
              height: 40,
            ),
          ),
          MyTextButton(
              onTap: () {},
              child: MyText(
                text: 'Create An Account Sign Up',
                color: cW,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    ));
  }
}
