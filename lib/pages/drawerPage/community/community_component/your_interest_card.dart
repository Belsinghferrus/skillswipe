import 'package:flutter/material.dart';

class YourInterestCard extends StatelessWidget {
  final String name;
  final String location;
  final String message;
  final String avatarUrl;
  const YourInterestCard({
    super.key,
    required this.name,
    required this.location,
    required this.message,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(right: 10, bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(2, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    avatarUrl,
                  ), // Replace with the user's avatar URL
                  radius: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
