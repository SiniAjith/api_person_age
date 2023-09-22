// To parse this JSON data, do
//
//     final personModel = personModelFromJson(jsonString);

import 'dart:convert';

List<PersonModel> personModelFromJson(String str) => List<PersonModel>.from(json.decode(str).map((x) => PersonModel.fromJson(x)));

String personModelToJson(List<PersonModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PersonModel {
  String name;
  String age;
  String address;

  PersonModel({
    required this.name,
    required this.age,
    required this.address,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
    name: json["name"],
    age: json["age"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "address": address,
  };
}
