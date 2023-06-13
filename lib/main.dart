import 'package:consumo_api/home/dio/dio_bindings.dart';
import 'package:consumo_api/home/dio/dio_page.dart';
import 'package:consumo_api/home/get_connect/get_connect_bindings.dart';
import 'package:consumo_api/home/get_connect/get_connect_page.dart';
import 'package:consumo_api/home/home_bindings.dart';
import 'package:consumo_api/home/http/http_bindings.dart';
import 'package:consumo_api/home/http/http_page.dart';
import 'package:consumo_api/params/http_params/http_params_bindings.dart';
import 'package:consumo_api/params/http_params/http_params_page.dart';
import 'package:consumo_api/params/params_bindings.dart';
import 'package:consumo_api/params/params_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getConnect',
              page: () => const GetConnectPage(),
              binding: GetConnectBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => const DioPage(),
              binding: DioBindings(),
            ),
            GetPage(
              name: '/params',
              page: () => const ParamsPage(),
              binding: ParamsBindings(),
              children: [
                GetPage(
                    name: '/http',
                    page: () => const HttpParamsPage(),
                    binding: HttpParamsBindings()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
