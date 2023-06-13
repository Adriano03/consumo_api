import 'package:consumo_api/models/backend_model.dart';

abstract class ILocalBackend {

  Future<BackendModel> helloPathParam();

  Future<BackendModel> helloQueryParam();

  Future<BackendModel> helloTogetherParam();

}