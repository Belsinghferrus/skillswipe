import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/drawerPage/community/community_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "Skill Swipe",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              //My Account

              DrawerListTile(
                icon: Icons.person,
                text: "Personal Details",
                onTap: () {},
              ),

              //community
              DrawerListTile(
                icon: Icons.forum,
                text: "Community",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CommunityPage(),
                    ),
                  );
                },
              ),

              //premium
              DrawerListTile(
                icon: Icons.workspace_premium,
                text: "Premium",
                onTap: () {},
              ),

              //settings
              DrawerListTile(
                icon: Icons.settings,
                text: "Settings",
                onTap: () {},
              ),

              //help
              DrawerListTile(
                icon: Icons.help,
                text: "Help",
                onTap: () {},
              ),
            ],
          ),

          //logout
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: DrawerListTile(
              icon: Icons.logout,
              text: "Logout",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

// D R A W E R L I S T T I L E

class DrawerListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const DrawerListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}
