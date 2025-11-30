class Reference {
  int? book;
  int? hadithNumber;

  Reference({
    this.book,
    this.hadithNumber
  });

  factory Reference.fromJson(Map<String, dynamic> json) => Reference(
    book: json["book"],
    hadithNumber: json["hadith"]
  );
}