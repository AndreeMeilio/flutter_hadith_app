
import 'package:flutter_hadith_app/datas/models/hadith.dart';

class Section {
  String? number;
  String? name;
  int? hadithNumberFirst;
  int? hadithNumberLast;
  int? arabicNumberFirst;
  int? arabicNumberLast;
  List<Hadith?>? listHadith;

  Section({
    this.number,
    this.name,
    this.hadithNumberFirst,
    this.hadithNumberLast,
    this.arabicNumberFirst,
    this.arabicNumberLast,
    this.listHadith
  });

  factory Section.fromJson(Map<String, dynamic> json) => 
    Section(
      number: json["number"],
      name: json["name"],
      hadithNumberFirst: int.parse(json["hadithnumber_first"].toString()),
      hadithNumberLast: int.parse(json["hadithnumber_last"].toString()),
      arabicNumberFirst: int.parse(json["arabicnumber_first"].toString()),
      arabicNumberLast: int.parse(json["arabicnumber_last"].toString()),
      listHadith: json["hadiths"] == null ? [] : List<Hadith>.from(
        json["hadiths"].map((x) => Hadith.fromJson(x))
      )
    );
} 