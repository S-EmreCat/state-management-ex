import 'dart:math';

import 'package:get/get.dart';

import '../models/wishlist_model.dart';

class WishListController extends GetxController {
  // All products
  final RxList<Item> _items = List.generate(
      20,
      (index) => Item(
          id: index,
          name: 'Product $index',
          price: Random().nextDouble() * 100,
          inWishList: false.obs)).obs;

  List<Item> get items {
    return [..._items];
  }

  // This will return the products that were added to wish list
  List<Item> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }

  // Add an item to the wish list
  void addItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = true;
  } // Remove an item from the wish list

  void removeItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = false;
  }
}
