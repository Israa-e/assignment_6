import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  const SectionWidget({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft, // Start direction
                end: Alignment.centerRight, // End direction
                colors: [
                  const Color(0xFFC2D7F2), // 100% opacity
                  const Color(0xffffffff).withValues(alpha: 0.0), // 0% opacity
                ],
              ),
            ),
            child: Text(
              title ?? "Top Rated Freelances",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xff154883), width: 1),
                ),
              ),
              // padding: const EdgeInsets.only(
              //   bottom: 1,
              // ), // space between text & underline
              child: const Text(
                "View All",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff154883),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
