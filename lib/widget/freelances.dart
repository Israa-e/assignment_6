import 'package:flutter/material.dart';

class FreelancesInfo extends StatelessWidget {
  final String? img;
  final String? name;
  final String? title;

  const FreelancesInfo({super.key, this.img, this.name, this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        CircleAvatar(radius: 35, backgroundImage: AssetImage(img!)),

        Positioned(
          bottom: -35,
          left: -3,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffE7EFFC),
                  offset: Offset(2, 2),
                  blurRadius: 16,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  name!,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF1D1F24).withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF1D1F24),
                  ),
                ),
                SizedBox(height: 4),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),

                    color: Color(0x14827BEB),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/star.png"),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xFF1D1F24),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
