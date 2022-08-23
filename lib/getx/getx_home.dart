import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controller.dart';

class GetxHome extends StatefulWidget {
  GetxHome({Key? key}) : super(key: key);
  final Controller ctrl = Get.put(Controller());
  @override
  State<GetxHome> createState() => _GetxHomeState();
}

class _GetxHomeState extends State<GetxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${widget.ctrl.count}"),
            ),
            ElevatedButton(
              onPressed: () {
                widget.ctrl.increment();
              },
              child: const Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
