import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class DealWidget extends StatelessWidget {
  const DealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Color(0xffEEF3F9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StrokeText(
                    text: "Deal Of The Day",
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    strokeColor: Colors.black,
                    strokeWidth: 3,
                  ),

                  Text(
                    "Flat 60% OFF",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    "Aliquid soluta sed repellendus dignissimos culpa id. Dolorem molestias itaque neque similique.",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5C6F81),
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '06 : 34 :  ',
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '14',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 163, 163, 163),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 0.65,
                            ),
                          ),

                          SizedBox(height: 7),
                          Text(
                            '15',
                            style: TextStyle(
                              color: const Color(0xFF333333),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 0.74,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Shop Now"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/img3.png",
                height: 182.49,
                width: 123.12,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
