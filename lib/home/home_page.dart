// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:consumo_api/models/user_type.dart';
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
                onPressed: () {
                  final userType = UserType(id: '2', name: 'Adriano');
                  print('Criação do objeto: ${userType.id} - ${userType.name}');

                  final toMap = userType.toMap();
                  print('Convertendo em um mapa: $toMap');

                  final json = jsonEncode(toMap);
                  print('jsonEncode: $json');

                  final newMap = jsonDecode(json);
                  print('jsonDecode $newMap');

                  final newObject = UserType.fromMap(newMap);
                  print('Transformando o mapa em objeto: ${newObject.id} - ${newObject.name}');
                },
                child: const Text('Ver Prints Objetos Convertidos', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
