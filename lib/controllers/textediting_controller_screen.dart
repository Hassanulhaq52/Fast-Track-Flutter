import 'package:flutter/material.dart';

class TextEditingControllerScreen extends StatelessWidget {
  const TextEditingControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerValue = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              // onChanged: (value) {
              //   controllerValue.text = value;
              //   print(controllerValue.text);
              // },
              controller: controllerValue,
            ),
          ],
        ),
      ),
    );
  }
}
