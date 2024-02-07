import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });

                print(name);
              },
              decoration: const InputDecoration(
                hintText: 'Enter Your Name',
                suffixIcon: Icon(Icons.email),
                prefixIcon: Icon(Icons.phone),
                labelText: 'Hello',
              ),
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}
