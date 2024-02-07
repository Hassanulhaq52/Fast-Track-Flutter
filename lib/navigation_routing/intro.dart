import 'package:flutter/material.dart';

import 'contact_us.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('This is Home Screen',style: TextStyle(fontSize: 40),),
          ),
          ElevatedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen(),));

          }, child: Text('Go to Contact Screen')),
        ],
      ),
    );
  }
}
