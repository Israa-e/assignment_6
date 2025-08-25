import 'package:assigment_1/data/freelances_info_model.dart';
import 'package:assigment_1/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class FreelancesInfoWidget extends StatelessWidget {
  final FreelancesInfoModel model;
  const FreelancesInfoWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        CircleAvatar(radius: 35, backgroundImage: AssetImage(model.img)),

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
                  model.name,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF1D1F24).withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF1D1F24),
                  ),
                ),
                SizedBox(height: 4),
                RatingWidget(rate: model.rate ?? 4.5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
