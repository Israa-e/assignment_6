import 'package:assigment_1/screen/auth/login_screen.dart';
import 'package:assigment_1/screen/auth/sign_up_screen.dart';
import 'package:assigment_1/core/routes.dart';
import 'package:assigment_1/screen/home/home_screen.dart';
import 'package:assigment_1/screen/intro/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBarTheme: AppBarTheme(
          // backgroundColor: Color(0xfff0f3f8),
          scrolledUnderElevation: 0,
        ),
        primaryColor: Color(0xff007AFF),
      ),
      routes: {
        Routes.login: (context) => LoginScreen(),
        Routes.home: (context) => HomeScreen(),
        Routes.mainScreen: (context) => MainScreen(),
        Routes.signup: (context) => SignUpScreen(),
      },

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
