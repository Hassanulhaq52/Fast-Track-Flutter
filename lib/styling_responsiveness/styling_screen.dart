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
          // Center(child: Text('This is Styling Screen.',style: Theme.of(context).textTheme.headlineLarge,),),

          Center(
            child: Text(
              'This is Text Style',
              style: TextStyle(
                backgroundColor: Colors.blue,
                fontSize: 30,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
                overflow: TextOverflow.ellipsis,
                wordSpacing: 50,

              ),
            ),
          )
        ],
      ),
    );
  }
}
