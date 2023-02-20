// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce5/components/banner.dart';
import 'package:ecommerce5/components/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/menu.dart';
import '../../components/product.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            child: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        title: Text(
          "Monday Shopee",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Center(
            child: Stack(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 5),
          BannerComponents(),
          SizedBox(height: 20),
          MenuComponents(),
          SizedBox(height: 10),
          Text(
            "Product Recommand",
            style: TextStyle(
              color: primaryColorBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ProductComponents(),
        ],
      )),
    );
  }
}
