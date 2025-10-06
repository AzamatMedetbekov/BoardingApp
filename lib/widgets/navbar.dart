import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    required this.currentIndex,
    required this.onTabTapped,
  });

  final Function(int) onTabTapped;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
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
      ],
    );
  }
}
