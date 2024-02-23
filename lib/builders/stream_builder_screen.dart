import 'package:flutter/material.dart';

class StreamBuilderSCreen extends StatelessWidget {
  const StreamBuilderSCreen({super.key});

  Stream generateNumbers() async* {
    int count = 0;

    while (true) {
      await Future.delayed(
        Duration(seconds: 5),
      );
      yield count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: generateNumbers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Text(
                '${snapshot.data}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return Text("Invalid Error");
          }
        },
      ),
    );
  }
}
