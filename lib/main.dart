import 'package:ecommerce5/pages/auth/dashboard.dart';
import 'package:ecommerce5/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';
import 'controller/product_controller.dart';
import 'router/router.dart';

void main() {
  Get.lazyPut(() => AuthController());
  Get.lazyPut(() => ProductController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      getPages: routes(),
    );
  }
}
