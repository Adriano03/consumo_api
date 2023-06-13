import 'dart:convert';
import 'dart:developer';

import 'package:consumo_api/key/key_api.dart';
import 'package:consumo_api/models/user_model.dart';
import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http.get(Uri.parse(KeyApi.keyMockApi));
      final List<dynamic> responseMap = jsonDecode(response.body);
      log(responseMap.toString());

      return responseMap.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
    } catch (e) {
      log('$e');
      rethrow;
    }
  }
}
