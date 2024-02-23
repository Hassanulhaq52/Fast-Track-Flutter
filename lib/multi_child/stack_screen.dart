import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.blue,
        ),
        Positioned(
          top: 20,
          left: 30,
          child: Text(
            'Hello! This is Stack',
          ),
        ),
        Positioned(
            bottom: 20,
            right: 10,
            child: Image.network(
              'https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              height: 300,
            ))
      ],
    ));
  }
}
