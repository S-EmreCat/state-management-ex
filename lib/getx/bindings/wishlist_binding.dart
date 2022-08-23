import 'package:statemanagement/getx/controller/wishlist_controller.dart';

import 'package:get/get.dart';

class WishListBinding implements Bindings {
  @override
  void dependencies() {
    Get.create<WishListController>(() => WishListController());
  }
}
