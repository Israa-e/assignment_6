import 'package:assigment_1/core/routes.dart';
import 'package:assigment_1/widget/button_widget.dart';
import 'package:assigment_1/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F8),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 6),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 40,
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
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      TextFiledWidget(
                        hintText: 'Email or Phone Number',
                        controller: email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'must enter data';
                          } else if (!value.contains('@') ||
                              !value.contains('.')) {
                            return "please enter your correct data";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 16),
                      TextFiledWidget(
                        hintText: 'Password',
                        controller: password,
                        isPassword: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'must enter data';
                          } else if (value.length < 8) {
                            return 'too short';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: ButtonWidget(
                          onTap: () {
                            _login(context: context);
                          },
                          text: 'Sign In',
                        ),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You don't have an account?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              print("object");
                              Navigator.pushReplacementNamed(
                                context,
                                Routes.signup,
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xff007AFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login({context}) {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("please enter your data"),
          duration: Duration(milliseconds: 500),
        ),
      );
    } else {
      Navigator.pushReplacementNamed(
        context,
        Routes.mainScreen,
        arguments: email.text,
      );
    }
  }
}
