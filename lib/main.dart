import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constants/bindings.dart';
import 'package:todo/screens/auth/change_password_screen.dart';
import 'package:todo/screens/auth/log_in_screen.dart';
import 'package:todo/screens/main_screens/one_screen.dart';
import 'screens/auth/forgot_passwor_screen.dart';

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
        initialRoute: '/one',
        initialBinding: MyBindings(),
        routes: {
          // '/': (context) => SplashScreen(),
          '/log-in': (context) => LogInScreem(),
          '/one': (context) => oneScreen(),
          '/forgot-assword': (context) => ForgotPasswordScreen(),
          '/change-password': (context) => ChangePasswordScreen(),
        });
  }
}
