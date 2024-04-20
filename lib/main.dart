import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constants/bindings.dart';
import 'package:todo/screens/auth/log_in_screen.dart';
import 'package:todo/screens/main_screens/home_screen.dart';
import 'package:todo/screens/splash_screen.dart';

import 'screens/auth/otp_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'todo',
        // theme: ThemeData(fontFamily: 'IranSans'),
        initialRoute: '/spash',
        initialBinding: MyBindings(),
        routes: {
          '/spash': (context) => SplashScreen(),
          '/log-in': (context) => LogInScreem(),
          '/otp': (context) => OtpScreen(),
          '/home': (context) => HomeScreen(),
        });
  }
}
