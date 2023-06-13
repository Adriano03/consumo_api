import 'dart:developer';

import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:get/get.dart';

class DioController extends GetxController with StateMixin {
  final IUserRepository _dioRepository;

  DioController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    try {
      change([], status: RxStatus.loading());
      final data = await _dioRepository.findAllUsers();
      change(data, status: RxStatus.success());
    } catch (e) {
      log('$e');
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
