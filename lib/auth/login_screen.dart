import 'dart:math';

import 'package:assigment_1/home/home_screen.dart';
import 'package:assigment_1/widget/button_widget.dart';
import 'package:assigment_1/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xffF0F3F8),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Image.asset(
                "assets/images/logo.png",
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome ",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text: "Back!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Login to your account',
              style: Theme.of(
                context,
              ).textTheme.displayMedium?.copyWith(fontSize: 12),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 9),

            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    TextFiledWidget(
                      hintText: 'Email or Phone Number',
                      controller: email,
                      validator: (value) {},
                    ),
                    SizedBox(height: 16),
                    TextFiledWidget(
                      hintText: 'Password',
                      controller: password,
                      isPassword: true,
                      validator: (value) {},
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: ButtonWidget(
                        onTap: () {
                          _login(
                            context: context,
                            email: email,
                            password: password,
                          );
                        },
                        text: 'Sign In',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _login({
    context,
    required TextEditingController email,
    required TextEditingController password,
  }) {
    String emailText = email.text;
    String passwordText = password.text;
    if (emailText.isEmpty || passwordText.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("please enter your data")));
    } else {
      if (emailText.contains("@") &&
          emailText.contains(".") &&
          passwordText.length > 6) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );

        email.clear();
        password.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("please enter your correct data")),
        );
      }
    }
  }
}
