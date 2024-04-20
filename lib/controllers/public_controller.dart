import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PublicController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
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
}
