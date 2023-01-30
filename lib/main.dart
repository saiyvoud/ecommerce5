import 'package:ecommerce5/pages/auth/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// parameter for dart ===> final = ຄ່າຄົງທີ່ບໍ່ແນ່ນອນ .
// var = ແມ່ນຕົວປ່ຽນທີ່ບໍລະບຸຊະນິດຂໍ້ມູນ ,
// dynamic = ເປັນຕົວປ່ຽນທີ່ບໍ່ລະບຸຊະນິດຕົວປ່ຽນເຊັນກັນ
// List<dynamic> = ຕົວປ່ຽນແບບອາເລ[],
// object = ຕົວປ່ຽນແບບກອນຂໍ້ມູນ ,
// late = ເປັນຕົວປ່ຽນທີ່ບໍ່ມີຄ່າເລີ່ມຕົ້ນ
// const = ຕົວປ່ຽນມີຄ່າຄົງທີ່

// -------- state less widget ----------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}
// state full widget
