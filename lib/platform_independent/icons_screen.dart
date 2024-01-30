import 'package:flutter/material.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.delete,
          size: 400,
          color: Colors.red,
        ),
      ),
    );
  }
}
