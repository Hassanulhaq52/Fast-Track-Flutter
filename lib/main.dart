import 'package:flutter/material.dart';
import 'package:platform_specific/drawer.dart';
import 'package:platform_specific/home_screen.dart';
import 'package:platform_specific/user_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Specific Widgets',
      debugShowCheckedModeBanner: false,
      home: UserInputScreen(),
    );
  }
}
