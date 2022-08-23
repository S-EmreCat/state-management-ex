import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/shopping_controller.dart';

class ShoppingItem extends StatefulWidget {
  const ShoppingItem({Key? key}) : super(key: key);
  @override
  State<ShoppingItem> createState() => _ShoppingItemState();
}

class _ShoppingItemState extends State<ShoppingItem> {
  ShoppingController controller = Get.find();
  ShoppingController totalController =
      Get.find<ShoppingController>(tag: 'total');

  // Get.create tarafından enjekte edildi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text("-"),
              onPressed: () {
                controller.quantity.value--; // create
                totalController.total.value -=
                    3; // Get.put tarafından enjekte edildi
              },
            ),
            Obx(
              () => Text("quantity: ${controller.quantity.value}"
                  // aynı Get.find örneğini kullananların artırma azaltma ile oluşan sonucu yazdırıldı
                  ),
            ),
            ElevatedButton(
              child: const Text("+"),
              onPressed: () {
                controller.quantity.value++; // create
                totalController.total.value +=
                    3; // Get.put tarafından enjekte edildi
              },
            ),
            Obx(
              () => Text(
                "total ${totalController.total.toString()}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
