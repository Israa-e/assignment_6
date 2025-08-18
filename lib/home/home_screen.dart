import 'package:assigment_1/widget/book_widget.dart';
import 'package:assigment_1/widget/deal_widget.dart';
import 'package:assigment_1/widget/freelances.dart';
import 'package:assigment_1/widget/rating_widget.dart';
import 'package:assigment_1/widget/section_widget.dart';
import 'package:assigment_1/widget/top_services.dart';
import 'package:assigment_1/widget/workshops_widget.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,

          elevation: 0,
          leading: Image.asset('assets/icons/menu.png'),
          title: Image.asset("assets/images/logo.png", height: 24),
          actions: [
            Image.asset('assets/icons/shopping_cart.png'),
            SizedBox(width: 10),
            Image.asset("assets/icons/notif.png"),
            SizedBox(width: 10),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 18),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/icons/search.png"),
                        hintText: "Search here",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF232939)..withValues(alpha: 0.8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffB2BACD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffB2BACD),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffB2BACD),
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffB2BACD),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffB2BACD),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 51,
                    width: 51,
                    margin: EdgeInsets.only(left: 12),
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(width: 1, color: Color(0xffB2BACD)),
                    ),
                    child: Image.asset('assets/icons/sort.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight, // Start direction
                  end: Alignment.centerLeft, // End direction
                  colors: [
                    const Color(
                      0xFFCBDAEE,
                    ).withValues(alpha: 1.0), // 100% opacity
                    const Color(
                      0xFF9CB9DD,
                    ).withValues(alpha: 0.0), // 0% opacity
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          StrokeText(
                            text: "Todays Deal",
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            strokeColor: Colors.black,
                            strokeWidth: 3,
                          ),

                          Text(
                            "50% OFF",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            "Et provident eos est dolore. Eum libero \neligendi molestias aut et quibusdam aspernatur.",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff5C6F81),
                            ),
                            maxLines: 4,
                          ),
                          SizedBox(height: 10),

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
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("BUY IT NOW"),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 0.8, // Adjust as needed

                          colors: [
                            const Color(
                              0xFF2065B2,
                            ).withValues(alpha: 0.5), // 50% opacity
                            const Color(
                              0xFFFFFFFF,
                            ).withValues(alpha: 0.0), // 0% opacity
                          ],
                          stops: const [0.0, 3.0], // Start and end of gradient
                        ),
                      ),
                      child: Center(child: Image.asset("assets/images/ad.png")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SectionWidget(title: "Top Rated Freelances"),
            SizedBox(
              height: 137,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 24.0, bottom: 23),
                      child: FreelancesInfo(
                        img: "assets/images/img1.png",
                        name: "Wade Warren",
                        title: "Beautician",
                      ),
                    ),
                itemCount: 20,
              ),
            ),
            SizedBox(height: 40),

            SectionWidget(title: "Top Services"),
            SizedBox(height: 20),
            SizedBox(
              height: 514,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => TopServices(),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 25);
                },
              ),
            ),
            SizedBox(height: 40),

            SectionWidget(title: "Best Bookings"),
            SizedBox(height: 20),

            DealWidget(),
            SizedBox(height: 26),

            Booking(),
            SizedBox(height: 26),

            Booking(),

            SizedBox(height: 40),

            SectionWidget(title: "Recommended Workshops"),
            SizedBox(height: 26),
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 25,
                childAspectRatio: 0.7,
              ),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return WorkshopsWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
