import 'package:assigment_1/core/routes.dart';
import 'package:assigment_1/widget/button_widget.dart';
import 'package:assigment_1/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController conformPassword = TextEditingController();
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
                      text: "Sign In ",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sign Up to your account',
                style: Theme.of(
                  context,
                ).textTheme.displayMedium?.copyWith(fontSize: 12),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 14),

              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      TextFiledWidget(
                        hintText: 'Name',
                        controller: name,
                        validator: (value) {
                          return value!.length >= 3 ? null : "Enter Valid name";
                        },
                      ),
                      SizedBox(height: 16),
                      TextFiledWidget(
                        hintText: 'Email ',
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
                      SizedBox(height: 16),
                      TextFiledWidget(
                        hintText: 'Conform Password',
                        controller: conformPassword,
                        isPassword: true,
                        validator: (value) {
                          return value == password.text
                              ? null
                              : 'Password should be similar';
                        },
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: ButtonWidget(
                          onTap: () {
                            _login(context: context);
                          },
                          text: 'Sign Up',
                        ),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You have an account?",
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
                                Routes.login,
                              );
                            },
                            child: Text(
                              "Sign In",
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
        arguments: name.text,
      );
    }
  }
}
