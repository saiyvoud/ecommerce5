// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce5/components/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Text(
              "Let's Get Start ",
              style: TextStyle(
                fontSize: 35,
                color: primaryColorWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Image.asset(
              "assets/images/dashboard.png",
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap:() => Get.toNamed('/register'),
        child:  Container(
            height: 50,
            width: 260,
            decoration: BoxDecoration(
              color: primaryColorWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: primaryColorBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already You Account!",
                style: TextStyle(
                  color: primaryColorWhite,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
