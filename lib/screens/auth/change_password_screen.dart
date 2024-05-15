import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/widgets/MyTextButton.dart';
import 'package:todo/widgets/my_text_widget.dart';
import 'package:get/get.dart';
import '../../widgets/MyTextField.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: cPink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: MyText(
              textAlign: TextAlign.left,
              padding: EdgeInsets.only(left: 20),
              text: 'Change\n Password ',
              color: cW,
              fontWeight: FontWeight.bold,
              size: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: cW.withOpacity(.7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    txtColor: cB,
                    borderRadius: 2,
                    fillColor: cW,
                    prefixIcon: Container(
                      child: Icon(Icons.person, color: cB.withOpacity(.5)),
                    ),
                    textAlign: TextAlign.left,
                    hint: 'Username or Email',
                    hintColor: cB.withOpacity(.5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: cB.withOpacity(.5),
                    ),
                    txtColor: cB,
                    borderRadius: 2,
                    fillColor: cW,
                    prefixIcon: Container(
                      child: Icon(Icons.lock, color: cB.withOpacity(.5)),
                    ),
                    textAlign: TextAlign.left,
                    hint: 'Password',
                    hintColor: cB.withOpacity(.5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    suffixIcon:
                        Icon(Icons.visibility, color: cB.withOpacity(.5)),
                    txtColor: cB,
                    borderRadius: 2,
                    fillColor: cW,
                    prefixIcon: Container(
                      child: Icon(Icons.lock, color: cB.withOpacity(.5)),
                    ),
                    textAlign: TextAlign.left,
                    hint: 'Password',
                    hintColor: cB.withOpacity(.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          MyTextButton(
              onTap: () {},
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              width: Get.width,
              bgColor: cW.withOpacity(.7),
              child: MyText(
                text: 'Submit',
                color: cPink,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    ));
  }
}
