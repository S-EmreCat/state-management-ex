import 'package:get/get.dart';

import '../controller/shopping_controller.dart';

class ShoppingBinding implements Bindings {
  @override
  void dependencies() {
    Get.create<ShoppingController>(() =>
        ShoppingController()); // listeyi arttırmak için kullanılacak farklı örnekler
    Get.put<ShoppingController>(ShoppingController(),
        tag: 'total'); // toplamı görüntülemek için.
  }
}
