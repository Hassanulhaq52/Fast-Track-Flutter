import 'package:flutter/material.dart';

import 'package:platform_specific/platform_dependent/drawer.dart';
import 'package:platform_specific/styling_responsiveness/layout_builder_screen.dart';
import 'package:platform_specific/styling_responsiveness/orientation_builder_screen.dart';
import 'package:platform_specific/styling_responsiveness/responsive_screen.dart';
import 'package:platform_specific/styling_responsiveness/styling_screen.dart';
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

      // initialRoute: '/',
      // routes: {
      //
      //   '/': (context) => NavigationScreen(),
      //   '/intro_screen': (context) => IntroScreen(),
      //   '/about_screen': (context) => AboutScreen(),
      //   '/contact_screen': (context) => ContactScreen(),
      //
      //
      // },
      //   themeMode: ThemeMode.system,
      //   theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.dark(),
      home: ResponsiveGrid()
    );
  }
}
