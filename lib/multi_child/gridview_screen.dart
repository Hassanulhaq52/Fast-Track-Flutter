import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20,),itemCount: 8, itemBuilder: (context, index){

        return Container(color: Colors.yellow,
        child: Text('I am GridView ${index + 1}'),);

      }),
      
    );
  }
}
