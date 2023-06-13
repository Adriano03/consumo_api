import 'dart:developer';

import 'package:consumo_api/key/key_api.dart';
import 'package:consumo_api/models/user_model.dart';
import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryDio implements IUserRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);

  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio.get<List>(KeyApi.keyMockApi);
      return response.data?.map((e) => UserModel.fromMap(e)).toList() ?? [];
    } on DioException catch (e) {
      log('$e cod:${e.response?.statusCode}');
      rethrow;
    }
  }
}
