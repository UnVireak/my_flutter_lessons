// To parse this JSON data, do
//
//     final itemModel = itemModelFromMap(jsonString);

import 'dart:convert';

import 'package:flutter/rendering.dart';

ItemModel itemModelFromMap(String str) => ItemModel.fromMap(json.decode(str));

String itemModelToMap(ItemModel data) => json.encode(data.toMap());

class ItemModel {
  List<Result> results;

  ItemModel({
    required this.results,
  });

  factory ItemModel.fromMap(Map<String, dynamic> json) => ItemModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class Result {
  String pid;
  String title;
  String description;
  String image;
  String qty;
  String price;

  Result({
    required this.pid,
    required this.title,
    required this.description,
    required this.image,
    required this.qty,
    required this.price,
  });

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        pid: json["pid"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        qty: json["qty"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "pid": pid,
        "title": title,
        "description": description,
        "image": image,
        "qty": qty,
        "price": price,
      };

  @override
  String toString() {
    return toMap().toString();
  }
}
