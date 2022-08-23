import 'package:get/get.dart';

import '../controller/getx_controller.dart';

class MyGetxHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MyGetxController>(MyGetxController());
  }
}
