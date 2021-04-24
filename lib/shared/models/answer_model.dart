import 'dart:convert';

class AnswwerModel {
  final String title;
  final bool isRight;

  AnswwerModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswwerModel.fromMap(Map<String, dynamic> map) {
    return AnswwerModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswwerModel.fromJson(String source) =>
      AnswwerModel.fromMap(json.decode(source));
}
