class FactsModel {
  FactsModel({this.fact, this.length});

  String? fact;
  int? length;

  factory FactsModel.fromJson(Map<String, dynamic> json) =>
      FactsModel(fact: json['fact'], length: json['length']);
}
