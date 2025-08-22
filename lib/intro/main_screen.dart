import 'package:assigment_1/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    // const TasksScreen(),
    // const InboxScreen(),
    // const ProfilesScreen(),
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
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 2 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                "assets/icons/blog.svg",
                colorFilter: ColorFilter.mode(
                  _currentIndex == 3 ? Color(0xff827BEB) : Color(0xff676D75),
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Blog',
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
