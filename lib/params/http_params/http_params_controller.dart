import 'package:consumo_api/repository/i_local_backend.dart';
import 'package:get/get.dart';

class HttpParamsController extends GetxController {
  final ILocalBackend _backend;

  final message = ''.obs;
  final age = 0.obs;

  HttpParamsController(this._backend);

  Future<void> callPath() async {
    final response = await _backend.helloPathParam();
    message(response.message);
    age(response.age ?? 0);
  }

  void callQuery() {}

  void callTogether() {}
}
