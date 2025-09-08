import 'package:assigment_1/screen/auth/login_screen.dart';
import 'package:assigment_1/screen/auth/sign_up_screen.dart';
import 'package:assigment_1/core/routes.dart';
import 'package:assigment_1/screen/home/freelances_info_details.dart';
import 'package:assigment_1/screen/home/home_screen.dart';
import 'package:assigment_1/screen/home/all_product.dart';
import 'package:assigment_1/screen/intro/main_nav_screen.dart';
import 'package:assigment_1/widget/product_detail.dart';
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
        Routes.mainScreen: (context) => MainNavScreen(),
        Routes.signup: (context) => SignUpScreen(),
        Routes.freelanceInfoDetails: (context) => FreelanceInfoDetails(),
        Routes.homeV2: (context) => HomeV2(),
        Routes.productDetails: (context) => ProductDetailsWidget(),
      },

      debugShowCheckedModeBanner: false,
      home: MainNavScreen(),
    ),
  );
}
