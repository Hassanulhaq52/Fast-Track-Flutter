import 'package:flutter/material.dart';
import 'package:platform_specific/controllers/scroll_controller_screen.dart';
import 'package:platform_specific/multi_child/expanded_screen.dart';
import 'package:platform_specific/multi_child/flexible_screen.dart';

import 'package:platform_specific/multi_child/stack_screen.dart';
import 'package:platform_specific/navigation_routing/about.dart';
import 'package:platform_specific/navigation_routing/contact_us.dart';
import 'package:platform_specific/navigation_routing/intro.dart';
import 'package:platform_specific/navigation_routing/navigation_screen.dart';
import 'package:platform_specific/text_field.dart';

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
      initialRoute: '/',
      routes: {

        '/': (context) => NavigationScreen(),
        '/intro_screen': (context) => IntroScreen(),
        '/about_screen': (context) => AboutScreen(),
        '/contact_screen': (context) => ContactScreen(),


      },
      // home: NavigationScreen(),
    );
  }
}
