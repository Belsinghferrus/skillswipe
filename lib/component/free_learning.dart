import 'package:flutter/material.dart';

class FreeLearning extends StatelessWidget {
  const FreeLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Free Learning",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildCourseCard(),
              _buildCourseCard(),
              _buildCourseCard(),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildCourseCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Container(
      width: 160,
      margin: const EdgeInsets.only(right: 10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://awik.io/wp-content/uploads/2018/06/unsplash.jpg'), // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UX Designer in 3 Months",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "21,390 students",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text("10h 26m"),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
