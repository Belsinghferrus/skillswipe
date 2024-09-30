import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //title
                const Text(
                  'Skill Swipe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                //Started
                const Text(
                  "Let's get \n started",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),

                //description
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "unlock a world of limitless skills and knowledge with our free skill swipping app. where sharing is caring!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),

                //join now
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                      child: Text("Join Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                //login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //already member
                    Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 16),
                    ),

                    //login
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue[600],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
