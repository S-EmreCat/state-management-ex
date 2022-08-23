import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx_controller.dart';

class GetxPage2 extends GetView<MyGetxController>
// türünü belirtiyoruz GetView<MyGetxController>
//  Get.find yazmaya gerek kalmadan bize "controller" adında Controller oluşturuyor.
{
  const GetxPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            controller.count.toString(),
          ),
        ),
      ),
    );
  }
}
