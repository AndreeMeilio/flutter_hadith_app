class Grade {
  String? name;
  String? grade;

  Grade({
    this.name,
    this.grade
  });

  factory Grade.fromJson(Map<String, dynamic> json) => Grade(
    name: json["name"],
    grade: json["grade"]
  );
}