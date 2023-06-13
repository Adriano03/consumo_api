import 'dart:developer';

import 'package:consumo_api/repository/i_user_repository.dart';
import 'package:get/get.dart';

class GetConnectController extends GetxController with StateMixin {
  final IUserRepository _getConnectRepository;

  GetConnectController(this._getConnectRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    try {
      change([], status: RxStatus.loading());
      final data = await _getConnectRepository.findAllUsers();
      change(data, status: RxStatus.success());
    } catch (e) {
      log('$e');
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
