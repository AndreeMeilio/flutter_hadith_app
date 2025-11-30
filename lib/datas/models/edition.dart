// To parse this JSON data, do
//
//     final editions = editionsFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_hadith_app/datas/models/book_collections.dart';
import 'package:flutter_hadith_app/datas/models/section.dart';

Map<String, Edition> editionsFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Edition>(k, Edition.fromJson(v)));

String editionsToJson(Map<String, Edition> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Edition {
  String? code;
  String? name;
  List<BookCollections>? collection;
  Edition({
    this.code,
    this.name,
    this.collection
  });

  factory Edition.fromJson(Map<String, dynamic> json) => Edition(
    code: json["code"],
    name: json["name"],
    collection: json["collection"] == null ? [] : List<BookCollections>.from(json["collection"]!.map((x) => BookCollections.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "collection": collection == null ? [] : List<dynamic>.from(collection!.map((x) => x.toJson())),
  };
}