import 'package:flutter/material.dart';
import 'package:skill_swipe/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Swipe',
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
