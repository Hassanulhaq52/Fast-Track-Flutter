import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 250,
              color: Colors.greenAccent,
              child: Text('This is Margin'),

              // margin: EdgeInsets.all(40),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 100,
              width: 250,
              color: Colors.yellow,
              child: Text('This is Padding'),
              padding: EdgeInsets.only(left: 70, top: 50),
              // margin: EdgeInsets.all(40),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              alignment: Alignment.topRight,
              height: 100,
              width: 250,
              color: Colors.blue,
              child: Text('This is Alignment'),
              // margin: EdgeInsets.all(40),
            ),
          ),
          Center(
            child: Transform.rotate(
              angle: 0.5,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/gym.jpg')),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 3)),
                height: 100,
                width: 250,
                child: Text('This is Alignment'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              // alignment: Alignment.topRight,
              height: 100,
              width: 250,
              color: Colors.purple,
              child: Text('This is Align Widget'),
              // margin: const EdgeInsets.all(40),
            ),
          ),

        ],
      ),
    );
  }
}
