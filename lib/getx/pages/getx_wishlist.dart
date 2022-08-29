import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/wishlist_controller.dart';

class WishListPage extends StatelessWidget {
  WishListPage({Key? key}) : super(key: key);
  final WishListController _controller = Get.put(WishListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wish List"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // This button also shows you how many items in the wish list
          // It lets you go to the WishListScreen
          InkWell(
              child: Container(
                width: 300,
                height: 80,
                color: Colors.red,
                alignment: Alignment.center,
                // Use Obx(()=> to update Text() whenever _wishList.items.length is changed
                child: Obx(() => Text(
                      'Wish List: ${_controller.wishListItems.length}',
                      style: const TextStyle(fontSize: 28, color: Colors.white),
                    )),
              ),
              onTap: () => {
                    Get.toNamed("/wishlistscreen"),
                    debugPrint(_controller.items.length.toString()),
                  }),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            // Display all products in home screen
            child: ListView.builder(
              itemCount: _controller.items.length,
              // List item widget
              itemBuilder: (context, index) {
                final product = _controller.items[index];
                return Card(
                  key: ValueKey(product.id),
                  margin: const EdgeInsets.all(5),
                  color: Colors.amberAccent,
                  child: ListTile(
                    title: Text(product.name),
                    subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                    // Use Obx(()=> to update icon color when product.inWishList change
                    trailing: Obx(
                      () => IconButton(
                        onPressed: () {
                          if (product.inWishList.value == false) {
                            _controller.addItem(product.id);
                          } else {
                            _controller.removeItem(product.id);
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: product.inWishList.value == false
                              ? Colors.white
                              : Colors.red,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
