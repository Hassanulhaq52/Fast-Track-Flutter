import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? name;

    return Scaffold(
      body: Center(
        child: TextField(
          onChanged: (value) {
            name = value;
            print(name);
          },
          decoration: InputDecoration(
            hintText: 'Enter Your Name',
            suffixIcon: Icon(Icons.email),
            prefixIcon: Icon(Icons.phone),
            labelText: 'Hello',
          ),
        ),
      ),
    );
  }
}
