import 'package:get/get.dart';

import '../controller/getx_controller.dart';

class MyGetxPage2Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<MyGetxController>(MyGetxController());
  }
}
