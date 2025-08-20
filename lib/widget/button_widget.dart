import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x470095FF),
            blurRadius: 15,
            offset: Offset(0, 7),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff007AFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.07,
          ),
        ),
      ),
    );
  }
}

class ButtonWidget2 extends StatelessWidget {
  final String text;
  final Function() onTap;
  final String? image;
  const ButtonWidget2({
    super.key,
    required this.text,
    required this.onTap,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image ?? 'assets/icons/google.png'),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff8F9BB3),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.07,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
