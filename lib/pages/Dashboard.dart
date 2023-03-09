import 'package:flutter/material.dart';

import 'DocDashboard.dart';
import 'ProfileScreen.dart';
import 'Setting.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _currentIndex = 0;
  final List<Widget> _pages = [
    const DocDashboard(),
    const DocDashboard(),
    const ProfileScreen(),
    const Settings(),
  ];

  int _selectedIndex = 0;

  final PageController _pageController = PageController();



  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "Add Profile"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"),

        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );


  }
}
