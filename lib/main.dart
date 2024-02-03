import 'package:flutter/material.dart';
import 'package:platform_specific/multi_child/expanded_screen.dart';

import 'package:platform_specific/multi_child/stack_screen.dart';

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
      home: ExpandedScreen()
    );
  }
}
