import 'package:consumo_api/home/dio/dio_controller.dart';
import 'package:consumo_api/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioPage extends GetView<DioController> {
  const DioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio'),
        centerTitle: true,
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final UserModel item = state[index];
            final types = item.types.map((types) => types.name);
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(item.name),
                  subtitle: Column(
                    children: [
                      Text(types.join(', ')),
                    ],
                  ),
                  leading: Text(item.id),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
