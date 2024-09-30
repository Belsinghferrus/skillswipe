import 'package:flutter/material.dart';
import 'package:skill_swipe/component/bottom_nav_bar.dart';
import 'package:skill_swipe/pages/connect_page.dart';
import 'package:skill_swipe/pages/explore_page.dart';
import 'package:skill_swipe/pages/home_page.dart';
import 'package:skill_swipe/pages/profile_page.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  /*
------------B O T T O M - N A V - B A R------------------------
*/

//this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    ConnectPage(),
    ProfilePage(),
  ];

  /*
------------B O T T O M - N A V - B A R------------------------
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: _pages[_selectedIndex],
      bottomNavigationBar:
          MainBottonNavBar(onTabChange: (index) => navigateBottomBar(index)),
    );
  }
}
