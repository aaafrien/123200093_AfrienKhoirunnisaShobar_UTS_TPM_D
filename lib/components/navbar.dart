import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/calendar.dart';
import 'package:uts_tpm/pages/geometric.dart';
import 'package:uts_tpm/pages/homepage.dart';
import 'package:uts_tpm/pages/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List pages = [
    Homepage(),
    Geometric(),
    Calendar(),
    Profile(),
  ];

  void _onTap(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square_foot_rounded),
            label: 'Geometrics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.pink,
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
