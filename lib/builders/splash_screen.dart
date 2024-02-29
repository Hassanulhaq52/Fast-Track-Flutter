import 'package:flutter/material.dart';

import 'future_builder_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FutureBuilderScreen(),
        ),
      );
    });

    return Scaffold(
      body: Center(child: Text('Splash Screen')),
    );
  }
}
