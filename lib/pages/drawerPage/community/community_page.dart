import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/drawerPage/community/community_component/explore_community.dart';
import 'package:skill_swipe/pages/drawerPage/community/community_component/your_interest.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YourInterest(),
              SizedBox(height: 20),
              ExploreCommunity(),
            ],
          ),
        ),
      ),
    );
  }
}
