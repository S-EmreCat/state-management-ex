import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx/bindings/getx_page2_binding.dart';
import 'getx/getx_home.dart';
import 'getx/bindings/getx_home_binding.dart';
import 'getx/getx_page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: MyGetxHomeBinding(),
      getPages: [
        GetPage(
          name: "/",
          page: () => GetxHome(),
          binding: MyGetxHomeBinding(),
        ),
        GetPage(
          name: "/second",
          page: () => GetxPage2(),
          binding: MyGetxPage2Binding(),
        ),
      ],
      title: 'Getx Home',
      home: GetxHome(),
    );
  }
}
