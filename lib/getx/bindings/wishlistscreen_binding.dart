import 'package:statemanagement/getx/controller/wishlist_controller.dart';

import 'package:get/get.dart';

class WishListScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<WishListController>(WishListController());
  }
}
