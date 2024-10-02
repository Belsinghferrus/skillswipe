import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainBottonNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MainBottonNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          tabActiveBorder: Border.all(color: Colors.yellow.shade100),
          tabBackgroundColor: Colors.yellow.shade100,
          // backgroundColor: Colors.yellow,
          tabMargin:const EdgeInsets.all(5),
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.bolt,
              text: "Explore",
            ),
            GButton(
              icon: Icons.handshake,
              text: "Connect",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ]),
    );
  }
}
