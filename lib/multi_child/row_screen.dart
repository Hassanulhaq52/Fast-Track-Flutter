import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            child: Text('I am Row'),
          ),
          Container(
            color: Colors.blue,
            child: Text('I am Row'),
          ),
          Container(
            color: Colors.blue,
            child: Text('I am Row'),
          ),
          Container(
            color: Colors.blue,
            child: Text('I am Row'),
          ),
        ],
      ),
    );
  }
}
