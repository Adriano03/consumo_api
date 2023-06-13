import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './params_controller.dart';

class ParamsPage extends GetView<ParamsController> {
  const ParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Acesso API Params'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('params/http'),
              child: const Text('HTTP', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => Get.toNamed('params/get_connect'),
              child: const Text('GetConnect', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => Get.toNamed('params/dio_params'),
              child: const Text('DIO', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
