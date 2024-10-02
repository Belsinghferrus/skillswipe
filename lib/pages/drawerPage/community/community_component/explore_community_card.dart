import 'package:flutter/material.dart';

class ExploreCommunityCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconUrl;
  const ExploreCommunityCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(2, 6),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(iconUrl), // Replace with community icon URL
                radius: 20,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://example.com/user1.jpg'), // Replace with user avatar URL
                radius: 10,
              ),
              SizedBox(width: 5),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://example.com/user2.jpg'), // Replace with user avatar URL
                radius: 10,
              ),
              SizedBox(width: 5),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://example.com/user3.jpg'), // Replace with user avatar URL
                radius: 10,
              ),
              Spacer(),
              Text("4k members",
                  style: TextStyle(color: Colors.white70, fontSize: 10)),
            ],
          ),
        ],
      ),
    );
  }
}
