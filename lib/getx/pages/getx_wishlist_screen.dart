// screens/wish_list_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/wishlist_controller.dart';

class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key}) : super(key: key);

  final WishListController _controller = Get.find<WishListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_controller.wishListItems.length.toString()),
        ),
        body: Column(
          children: [
            const Expanded(
              child: Text("data"),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: _controller.wishListItems.length,
                  itemBuilder: (context, index) {
                    final item = _controller.wishListItems[index];
                    return Card(
                      key: ValueKey(item.id),
                      margin: const EdgeInsets.all(5),
                      color: Colors.blue[200],
                      child: ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        // This button use to remove the item from wish list
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            item.inWishList.value = false;
                            _controller.removeItem(item.id);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
