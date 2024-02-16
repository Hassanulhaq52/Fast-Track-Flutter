import 'package:flutter/material.dart';
import 'package:platform_specific/api_integration/api_services/facts_services.dart';

class FactScreen extends StatelessWidget {
  const FactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FactServices().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text('${snapshot.data['fact']}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
