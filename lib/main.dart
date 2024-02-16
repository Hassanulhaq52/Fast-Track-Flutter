import 'package:flutter/material.dart';
import 'package:platform_specific/api_integration/screens/facts_screen.dart';
import 'package:platform_specific/builders/future_builder_screen.dart';
import 'package:platform_specific/builders/splash_screen.dart';
import 'package:platform_specific/builders/stream_builder_screen.dart';
import 'package:platform_specific/styling_responsiveness/orientation_builder_screen.dart';

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
        theme: ThemeData.dark(),
        home: FactScreen());
  }
}
