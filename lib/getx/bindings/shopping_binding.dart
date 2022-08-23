import 'package:get/get.dart';

import '../controller/shopping_controller.dart';

class ShoppingBinding implements Bindings {
  @override
  void dependencies() {
    // quantity arttırmak için kullanılacak farklı örnekler
    Get.create<ShoppingController>(() => ShoppingController());
    // total görüntülemek için.
    Get.put<ShoppingController>(ShoppingController(), tag: 'total');
  }
}
