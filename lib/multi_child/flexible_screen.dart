import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // width: 400,
            // height: 200,
            child: Text('This is Container 1'),
            color: Colors.blue,
          ),
          Container(
            // width: 400,
            // height: 200,
            child: Text('This is Container 2'),
            color: Colors.red,
          ),
          Flexible(
            child: Container(

              width: 400,
              height: 500,
              child: Text('This is Container 3'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
