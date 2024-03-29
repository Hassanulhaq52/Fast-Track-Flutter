import 'package:flutter/material.dart';
import 'package:platform_specific/navigation_routing/about.dart';
import 'package:platform_specific/navigation_routing/contact_us.dart';
import 'package:platform_specific/navigation_routing/intro.dart';
import 'package:platform_specific/platform_dependent/home_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'This is Navigation Screen',
              style: TextStyle(fontSize: 50),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroScreen(),
                    ));

                // Navigator.pushNamed(context, '/intro_screen');
              },
              child: Text('Go to Home Screen')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutScreen(),
                    ));

                // Navigator.pushNamed(context, '/about_screen');
              },
              child: Text('Go to About Screen')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactScreen(),
                    ));

                // Navigator.pushNamed(context, '/contact_screen');
              },
              child: Text('Go to Contact Screen')),
          // ElevatedButton(onPressed: (){
          //
          //   Navigator.
          //
          // }, child: Text('Go to Contact Screen')),
        ],
      ),
    );
  }
}
