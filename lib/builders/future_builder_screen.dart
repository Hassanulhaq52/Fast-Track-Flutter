import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({super.key});

  Future fetchData() {
    return Future.delayed(const Duration(seconds: 5), () => 'Hello Future');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Text('${snapshot.data}', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            );
          } else {
            return const Center(
              child: Text('Invalid Error'),
            );
          }
        },
      ),
    );
  }
}
