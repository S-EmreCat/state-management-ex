import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx_controller.dart';

class GetxPage2 extends StatelessWidget {
  GetxPage2({Key? key}) : super(key: key);
  final MyGetxController _controller = Get
      .find(); // binding kullandığımız için find kullanımı Controller bulmak için yeterli.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            _controller.count.toString(),
          ),
        ),
      ),
    );
  }
}
