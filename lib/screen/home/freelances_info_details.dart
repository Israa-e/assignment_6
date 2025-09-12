import 'package:assigment_1/data/freelances_info_model.dart';
import 'package:assigment_1/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class FreelanceInfoDetails extends StatelessWidget {
  const FreelanceInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model =
        ModalRoute.of(context)!.settings.arguments as FreelancesInfoModel;
    return Scaffold(
      appBar: AppBar(title: Text('Freelance Info Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Details about Freelance Info',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Image.asset(model.img, height: 200, fit: BoxFit.cover),

          Text(
            model.name,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF1D1F24).withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 4),
          Text(
            model.title,
            style: TextStyle(fontSize: 16, color: const Color(0xFF1D1F24)),
          ),
          SizedBox(height: 4),
          RatingWidget(rate: model.rate ),
        ],
      ),
    );
  }
}
