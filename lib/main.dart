import 'package:flutter/material.dart';
import 'package:platform_specific/multi_child/column_screen.dart';
import 'package:platform_specific/multi_child/gridview_screen.dart';
import 'package:platform_specific/multi_child/listview_screen.dart';
import 'package:platform_specific/multi_child/row_screen.dart';

import 'package:platform_specific/single_child/container.dart';

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
      home: GridviewScreen()
    );
  }
}
