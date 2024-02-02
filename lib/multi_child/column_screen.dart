import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
        Container(
          color: Colors.blue,
          child: Text('I am Column'),
        ),
      ],
    ));
  }
}
