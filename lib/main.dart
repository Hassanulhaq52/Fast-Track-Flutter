import 'package:flutter/material.dart';
import 'package:platform_specific/api_integration/screens/fact_screen_model.dart';


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
        home: FactScreenModel());
  }
}
