import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './http_params_controller.dart';

class HttpParamsPage extends GetView<HttpParamsController> {
  const HttpParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Params Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text('Mensagem: ${controller.message.value}')),
          const SizedBox(height: 10),
          Obx(() => Text('Idade: ${controller.age.value}')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => controller.callPath(),
                child: const Text('Path'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
