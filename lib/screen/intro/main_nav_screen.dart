import 'package:assigment_1/screen/home/account.dart';
import 'package:assigment_1/screen/home/all_product.dart';
import 'package:assigment_1/screen/home/books.dart';
import 'package:assigment_1/screen/home/explore.dart';
import 'package:assigment_1/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _currentIndex = 1;
  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeV2(),
    const Books(),
    const ExploreCharacters(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1D1F24),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xff827BEB),
        unselectedItemColor: Color(0xff676D75),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 10,

        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/home.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/explore.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 1 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/blog.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 2 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 3 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Characters',
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/account.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 4 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
