import 'package:consumo_api/home/get_connect/get_connect_controller.dart';
import 'package:consumo_api/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Connect'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(), borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(item.userName),
                    subtitle: Text(item.name),
                    leading: Text(item.id),
                  ),
                ),
              );
            },
          );
        },
        onError: (error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error!, style: const TextStyle(fontSize: 20)),
                OutlinedButton(
                  onPressed: () => controller.findUsers(),
                  child: const Text('Tentar Novamente'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
