import 'package:flutter/material.dart';

class StylingScreen extends StatelessWidget {
  const StylingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling Screen'),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(child: Text('This is Styling Screen.',style: Theme.of(context).textTheme.headlineLarge,),),

        ],
      ),
    );
  }
}
