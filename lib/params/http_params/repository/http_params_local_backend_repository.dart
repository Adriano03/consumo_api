import 'dart:developer';

import 'package:consumo_api/key/key_api.dart';
import 'package:consumo_api/models/backend_model.dart';
import 'package:consumo_api/repository/i_local_backend.dart';
import 'package:http/http.dart' as http;

class HttpParamsLocalBackendRepository implements ILocalBackend {
  @override
  Future<BackendModel> helloPathParam() async {
    final url = Uri.parse(KeyApi.keyMockApi);
    final response = await http.get(url);
    log(response.body);
    return BackendModel.fromJson(response.body);
  }

  @override
  Future<BackendModel> helloQueryParam() {
    // TODO: implement helloQueryParam
    throw UnimplementedError();
  }

  @override
  Future<BackendModel> helloTogetherParam() {
    // TODO: implement helloTogetherParam
    throw UnimplementedError();
  }
}
