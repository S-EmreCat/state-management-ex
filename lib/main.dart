import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/getx/bindings/shopping_binding.dart';
import 'package:statemanagement/getx/bindings/wishlist_binding.dart';
import 'package:statemanagement/getx/pages/getx_wishlist.dart';

import 'getx/bindings/getx_page2_binding.dart';
import 'getx/pages/getx_home.dart';
import 'getx/bindings/getx_home_binding.dart';
import 'getx/pages/getx_page2.dart';
import 'getx/pages/getx_shopping_page.dart';
import 'getx/pages/getx_wishlist_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: MyGetxHomeBinding(),
      home: GetxHome(),
      getPages: [
        GetPage(
          name: "/",
          page: () => GetxHome(),
          binding: MyGetxHomeBinding(),
        ),
        GetPage(
          name: "/second",
          page: () => const GetxPage2(),
          binding: MyGetxPage2Binding(),
        ),
        GetPage(
          name: "/shopping",
          page: () => const ShoppingItem(),
          binding: ShoppingBinding(),
        ),
        GetPage(
          name: "/wishlist",
          page: () => WishListPage(),
          binding: WishListBinding(),
        ),
        GetPage(
          name: "/wishlistscreen",
          page: () => WishListScreen(),
          binding: WishListBinding(),
        ),
      ],
    );
  }
}
