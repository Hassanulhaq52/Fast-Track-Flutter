import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

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
          Container(
            //
            // width: 400,
            // height: 200,
            child: Text('This is Container 3'),
            color: Colors.yellow,
          ),
          Row(
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
              Expanded(
                child: Container(
                  //
                  // width: 400,
                  // height: 200,
                  child: Text('This is Container 3'),
                  color: Colors.yellow,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
