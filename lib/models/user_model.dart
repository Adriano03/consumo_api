import 'package:consumo_api/models/user_type.dart';

class UserModel {
  String id;
  String name;
  String userName;
  List<UserType> types;

  UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': types.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      types: List<UserType>.from(map['user_types']?.map((x) => UserType.fromMap(x))),
    );
  }
}
