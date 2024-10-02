import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/drawerPage/community/community_component/explore_community_card.dart';

class ExploreCommunity extends StatelessWidget {
  const ExploreCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Communities",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 0.8,
          children: const [
            ExploreCommunityCard(
                title: 'Mental Wellness',
                description:
                    'Support each other in overcoming stress, anxiety, and depression together.',
                iconUrl: 'https://example.com/icon1.png'),
            ExploreCommunityCard(
                title: 'Parenting Tips',
                description:
                    'Share advice and experiences on raising children and navigating parenthood.',
                iconUrl: 'https://example.com/icon2.png'),
            ExploreCommunityCard(
                title: 'Fitness Motivation',
                description:
                    'Encourage each other to stay active, healthy, and reach fitness goals.',
                iconUrl: 'https://example.com/icon3.png'),
            ExploreCommunityCard(
                title: 'Pet Lovers',
                description:
                    'Discuss pet care, share stories, and connect with fellow animal lovers.',
                iconUrl: 'https://example.com/icon4.png'),
            ExploreCommunityCard(
                title: 'Pet Lovers',
                description:
                    'Discuss pet care, share stories, and connect with fellow animal lovers.',
                iconUrl: 'https://example.com/icon4.png'),
            // Add more community cards as needed
          ],
        ),
      ],
    );
  }
}
