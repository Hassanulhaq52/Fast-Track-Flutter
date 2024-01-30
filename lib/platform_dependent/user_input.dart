import 'package:flutter/material.dart';

class UserInputScreen extends StatelessWidget {
  const UserInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(

  title: Text('User Input Screen'),

),
      body: Column(children: [

        TextField(),
        Slider(value: 0.5, onChanged: (double value){}),
        Checkbox(value: true, onChanged: (bool? value){})

      ],),

    );
  }
}
