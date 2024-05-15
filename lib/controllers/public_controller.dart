import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constants/model.dart';

class PublicController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  TextEditingController name = TextEditingController();
  TextEditingController family = TextEditingController();
  RxList<UserModel> listUsers = <UserModel>[].obs;
  void changeDrawerState({required bool open}) {
    if (open) {
      scaffoldState.currentState?.openDrawer();
    } else {
      scaffoldState.currentState?.closeDrawer();
    }
  }

  void runSplash() {
    Timer(Duration(seconds: 3), () {
      Get.toNamed('/log-in');
    });
  }

  void getFullName() {
    print('yes');
    listUsers.add(UserModel(family: family.text, name: name.text));
  }
}
