import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/board_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/widgets/navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const BoardPage(),
    const ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],

      bottomNavigationBar: Navbar(
        currentIndex: _currentPageIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }
}
