// ignore_for_file: must_be_immutable

import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/profilepage.dart';
import 'package:first_app/pages/settingspage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the selected index
  void _navigationButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),

    // settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text("My FirstPage"),
        leading: Icon(Icons.menu),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationButtomBar,
          items: [
            // home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),

            // profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),

            // settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
