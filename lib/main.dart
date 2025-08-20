import 'package:assigment_1/auth/login_screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
