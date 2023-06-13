import 'package:consumo_api/home/http/http_controller.dart';
import 'package:consumo_api/home/http/repository/user_http_repository.dart';
import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
