import 'package:flutter_hadith_app/datas/models/section.dart';

class BookCollections {
    String? name;
    String? book;
    String? author;
    String? language;
    bool? hasSections;
    String? direction;
    String? source;
    String? comments;
    String? link;
    String? linkmin;
    List<Section>? sections;

    BookCollections({
        this.name,
        this.book,
        this.author,
        this.language,
        this.hasSections,
        this.direction,
        this.source,
        this.comments,
        this.link,
        this.linkmin,
        this.sections
    });

    factory BookCollections.fromJson(Map<String, dynamic> json) => BookCollections(
        name: json["name"],
        book: json["book"],
        author: json["author"],
        language: json["language"],
        hasSections: json["has_sections"],
        direction: json["direction"],
        source: json["source"],
        comments: json["comments"],
        link: json["link"],
        linkmin: json["linkmin"],
        sections: json["sections"] == null ? [] : List<Section>.from(json["sections"]!.map((x) => Section.fromJson(x)))
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "book": book,
        "author": author,
        "language": language,
        "has_sections": hasSections,
        "direction": direction,
        "source": source,
        "comments": comments,
        "link": link,
        "linkmin": linkmin,
    };
}