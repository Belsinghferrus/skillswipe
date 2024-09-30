import 'package:flutter/material.dart';
import 'package:skill_swipe/component/free_learning.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.brown[200],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.white),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSwapLearnGrowSection(),
              SizedBox(height: 20),
              FreeLearning(),
              SizedBox(height: 20),
              FreeLearning(),
              FreeLearning()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwapLearnGrowSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Swap, learn, grow",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Most Collaborated",
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          Row(
            children: [
              Text(
                "Discover the most accomplished \n and influential professionals",
                style: TextStyle(fontSize: 14),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text("See more"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
