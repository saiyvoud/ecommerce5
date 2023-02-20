// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.8,
        childAspectRatio: 0.8,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Image.asset(
                "assets/images/banner1.jpeg",
                fit: BoxFit.cover,
                height: 120,
              ),
              Text('sdsdsdsd'),
            ],
          ),
        );
      },
    );
  }
}
