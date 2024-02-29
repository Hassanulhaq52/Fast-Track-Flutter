import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'This is Simple Text',
          )),
          Center(
              child: Text(
            'This is Big Text',
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.red,
              letterSpacing: 45,

            ),
          )),
          Center(
              child: Text(
            'This is Bold Text',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            'This is Italic Text',
            style: TextStyle(fontStyle: FontStyle.italic),
          )),
        ],
      ),
    );
  }
}
