import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart'; 

class Navbar extends StatefulWidget{
    const Navbar({
      super.key,
    });

  @override 
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;

  void _onTabTapped(int index){
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPageIndex,
      onTap: _onTabTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.filledHome),
          icon: SvgPicture.asset(Assets.icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.filledSquares),
          icon: SvgPicture.asset(Assets.icons.squares),
          label: 'Board',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.filledPerson),
          icon: SvgPicture.asset(Assets.icons.person),
          label: 'Profile',
        ),
      ]
    );
  }
}