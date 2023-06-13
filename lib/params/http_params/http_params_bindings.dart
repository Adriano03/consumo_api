import 'package:consumo_api/params/http_params/repository/http_params_local_backend_repository.dart';
import 'package:consumo_api/repository/i_local_backend.dart';
import 'package:get/get.dart';
import './http_params_controller.dart';

class HttpParamsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILocalBackend>(HttpParamsLocalBackendRepository());
    Get.put(HttpParamsController(Get.find()));
  }
}
