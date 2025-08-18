import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final Color? color;
  final double rate;
  const RatingWidget({super.key, required this.rate, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),

        color: color ?? Color(0x14827BEB),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/star.png"),
          SizedBox(width: 4),
          Text(
            rate.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1D1F24),
            ),
          ),
        ],
      ),
    );
  }
}
