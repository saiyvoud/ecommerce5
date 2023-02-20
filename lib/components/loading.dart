import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              "assets/animations/loading.json",
              fit: BoxFit.cover,
            ),
            Text('ກຳລັງໂຫລດຂໍ້ມູນ..'),
          ],
        ),
      ),
    );
  }
}
