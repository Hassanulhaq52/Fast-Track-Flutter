import 'package:flutter/material.dart';
import 'package:platform_specific/api_integration/api_services/fact_service_model.dart';
import 'package:platform_specific/api_integration/api_services/facts_services.dart';
import 'package:platform_specific/api_integration/models/facts_model.dart';

class FactScreenModel extends StatelessWidget {
  const FactScreenModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<FactsModel?>(
        future: FactServiceModel().getFactModel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text('${snapshot.data!.fact}'),
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
