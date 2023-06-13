import 'dart:developer';

import 'package:consumo_api/key/key_api.dart';
import 'package:consumo_api/models/user_model.dart';
import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:consumo_api/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient.get(
      KeyApi.keyMockApi,
      decoder: (data) {
        if (data is List) {
          log('$data');
          return data.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
        }
        return null;
      },
    );

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }

    return response.body!;
  }
}
