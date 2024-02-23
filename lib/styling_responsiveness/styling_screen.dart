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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(child: Text('This is Styling Screen.',style: Theme.of(context).textTheme.headlineLarge,),),

            const Text(
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

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(450, 100),
                side: BorderSide(width: 10, color: Colors.red),
                elevation: 20,
              ),
              child: const Text(
                'Elevated Button',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),

            Container(

              child: Text('This is Container',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              height: 300,
              width: 500,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                color: Colors.purple,
                // borderRadius: BorderRadius.circular(300),
                shape: BoxShape.circle,
                // image: DecorationImage(image: NetworkImage('https://pakobserver.net/wp-content/uploads/2024/02/Babar-Azam-1-750x525.jpg'))

              ),
            )
          ],
        ),
      ),
    );
  }
}
