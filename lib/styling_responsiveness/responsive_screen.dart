import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;



    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.25,
              width: width * 0.5,
              color: Colors.red,
              child: Text('Conatiner 1'),
            ),
            Container(
              height: height * 0.45,
              width: width * 0.7,
              color: Colors.yellow,
              child: Text('Conatiner 2'),
            ),
            Container(
              height: height * 0.25,
              width: width * 0.5,
              color: Colors.orange,
              child: Text('Conatiner 3'),
            ),
          ],
        ),
      ),
    );
  }
}
