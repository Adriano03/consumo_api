// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Acesso API'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: const Text('HTTP', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/dio'),
              child: const Text('DIO', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getConnect'),
              child: const Text('GetConnect', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/params'),
              child: const Text('Params Page', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
