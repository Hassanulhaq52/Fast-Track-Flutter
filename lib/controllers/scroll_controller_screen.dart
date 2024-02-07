import 'package:flutter/material.dart';

class ScrollControllerScreen extends StatefulWidget {
  ScrollControllerScreen({super.key});

  @override
  State<ScrollControllerScreen> createState() => _ScrollControllerScreenState();
}

class _ScrollControllerScreenState extends State<ScrollControllerScreen> {
  ScrollController sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(child: Text('Controller Demo')),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                controller: sc,
                child: const Column(
                  children: [
                    Text('Demo1', style: TextStyle(fontSize: 20)),
                    Text('Demo2', style: TextStyle(fontSize: 20)),
                    Text('Demo3', style: TextStyle(fontSize: 20)),
                    Text('Demo4', style: TextStyle(fontSize: 20)),
                    Text('Demo5', style: TextStyle(fontSize: 20)),
                    Text('Demo6', style: TextStyle(fontSize: 20)),
                    Text('Demo7', style: TextStyle(fontSize: 20)),
                    Text('Demo8', style: TextStyle(fontSize: 20)),
                    Text('Demo9', style: TextStyle(fontSize: 20)),
                    Text('Demo10', style: TextStyle(fontSize: 20)),
                    Text('Demo11', style: TextStyle(fontSize: 20)),
                    Text('Demo12', style: TextStyle(fontSize: 20)),
                    Text('Demo13', style: TextStyle(fontSize: 20)),
                    Text('Demo14', style: TextStyle(fontSize: 20)),
                    Text('Demo15', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       sc.jumpTo(14);
            //     },
            //     child: Container(
            //       alignment: Alignment.center,
            //       child: Text('Go to page two without named'),
            //     ))
          ],
        ),
      ),
    );
  }
}
