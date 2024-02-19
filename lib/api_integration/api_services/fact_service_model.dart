import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:platform_specific/api_integration/models/facts_model.dart';

class FactServiceModel {
  Future<FactsModel?> getFactModel() async {
    Uri url = Uri.parse('https://catfact.ninja/fact');
    http.Response response = await http.get(url);

    final body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      FactsModel factsData = FactsModel.fromJson(body);
      return factsData;
    }
  }
}
