import 'package:flutter/material.dart';
import '../controller/getx_controller.dart';
import 'package:get/get.dart';

class GetxHome extends StatelessWidget {
  GetxHome({Key? key}) : super(key: key);

  final MyGetxController _controller = Get.put(MyGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(_controller.count.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.increment();
              },
              child: const Text("click add"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              child: const Text("go to second page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/shopping");
              },
              child: const Text("go to shopping page"),
            ),
            ElevatedButton(
              onPressed: () => Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark()),
              child: const Text("Change Theme"),
            ),
            ElevatedButton(
              onPressed: () => Get.snackbar('Hi', 'I am a modern snackbar'),
              child: const Text("Show dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/wishlist");
              },
              child: const Text("go to whish list page"),
            ),
          ],
        ),
      ),
    );
  }
}
