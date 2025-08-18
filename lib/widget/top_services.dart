import 'package:assigment_1/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class TopServices extends StatelessWidget {
  final String? img;
  final String? imgPerson;
  final String? name;
  final String? title;
  final String? description;
  final double? rate;
  final Function()? onTap;
  const TopServices({
    super.key,
    this.img,
    this.imgPerson,
    this.name,
    this.title,
    this.description,
    this.rate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 154,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: 154,
            width: 196.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage("assets/images/${img ?? "img2"}.png"),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 120,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    spreadRadius: 0,
                    blurRadius: 16,
                    color: Color(0xB2DAE5F2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/${imgPerson ?? "img1"}.png",
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? "Miss Zachary Will",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D1F24),
                        ),
                      ),
                      Text(
                        title ?? "Beautician",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff827BEB),
                        ),
                      ),
                      Text(
                        description ??
                            "Doloribus saepe aut necessit qui \nnon qui.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6B6B6B),
                        ),
                      ),
                      Row(
                        children: [
                          RatingWidget(rate: rate ?? 4.5),
                          SizedBox(
                            height: 31,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff827BEB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
