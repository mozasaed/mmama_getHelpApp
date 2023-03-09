import 'package:flutter/material.dart';
import 'package:mmama/pages/Setting.dart';
import 'Contacts.dart';
import 'RequestEmergency.dart';
import 'SearchDoc.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;
  final pages = [
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Contacts(),
  ];
  final PageController _pageController = PageController();

  int _currentIndex = 0;
  final List<Widget> _pages = [
    const ReqEmergency(),
    const SearchDoc(),
    const Contacts(),
    const Settings(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: Icon(Icons.contact_phone), label: "Contact"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
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
