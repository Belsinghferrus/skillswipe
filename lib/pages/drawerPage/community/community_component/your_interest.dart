import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/drawerPage/community/community_component/your_interest_card.dart';

class YourInterest extends StatelessWidget {
  const YourInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Connect with people like you",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              YourInterestCard(
                  name: 'Piano',
                  location: 'New York',
                  message:
                      'Hey guys, Jack here, I would like to connect with you all',
                  avatarUrl: 'https://example.com/avatar1.jpg'),
              YourInterestCard(
                  name: 'Web Development',
                  location: 'California',
                  message:
                      'Hey guys, Lara here, I would like to connect with you all',
                  avatarUrl: 'https://example.com/avatar2.jpg'),
              // Add more user cards as needed
            ],
          ),
        ),
      ],
    );
  }
}
