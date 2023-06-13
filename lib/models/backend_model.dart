import 'dart:convert';

class BackendModel {
  String message;
  int? age;

  BackendModel({
    required this.message,
    this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'mensagem': message,
      'idade': age,
    };
  }

  factory BackendModel.fromMap(Map<String, dynamic> map) {
    return BackendModel(
      message: map['mensagem'] ?? '',
      age: map['idade']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BackendModel.fromJson(String source) => BackendModel.fromMap(json.decode(source));
}
