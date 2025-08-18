import 'package:assigment_1/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage("assets/images/img4.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/img1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Text(
                  'Miss Zachary Will',
                  style: TextStyle(
                    color: const Color(0xFF1D1F24),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.11,
                  ),
                ),
                Text(
                  'Beautician',
                  style: TextStyle(
                    color: const Color(0xFF827BEB),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                'Occaecati aut nam beatae quo non deserunt consequatur.',
                style: TextStyle(
                  color: const Color.fromARGB(255, 78, 82, 91),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 1.25,
                ),
              ),
            ),
            trailing: RatingWidget(rate: 4.5),
          ),
        ],
      ),
    );
  }
}
