
import 'package:flutter_hadith_app/datas/models/grade.dart';
import 'package:flutter_hadith_app/datas/models/reference.dart';

class Hadith {
  int? hadithNumber;
  int? arabicNumber;
  String? text;
  List<Grade?>? listGrade;
  Reference? reference;

  Hadith({
    this.hadithNumber,
    this.arabicNumber,
    this.text,
    this.listGrade,
    this.reference
  });

  factory Hadith.fromJson(Map<String, dynamic> json) => Hadith(
    hadithNumber: json["hadithnumber"],
    arabicNumber: json["arabicnumber"],
    text: json["text"],
    listGrade: json["grades"] == null ? [] : List<Grade>.from(
      json["grades"].map((x) => Grade.fromJson(x))
    ),
    reference: Reference.fromJson(json["reference"] ?? {})
  );

}