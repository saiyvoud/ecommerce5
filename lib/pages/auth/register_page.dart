// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce5/components/color.dart';
import 'package:ecommerce5/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/loading.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Sign Up"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Form(
        key: authController.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                "assets/images/dashboard.png",
                height: 160,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(
                          fontSize: 15,
                          color: primaryColorBlack,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryGrey400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: authController.firstName,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            hintText: 'First Name',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "First Name is required";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Last Name",
                        style: TextStyle(
                          fontSize: 15,
                          color: primaryColorBlack,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryGrey400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: authController.lastName,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            hintText: 'Last Name',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Last Name is required";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15,
                          color: primaryColorBlack,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryGrey400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: authController.email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                            hintText: 'Email@gmai.com',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email is required";
                            } else if (!value.contains("@gmail.com")) {
                              return "must to be @gmail.com";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontSize: 15,
                          color: primaryColorBlack,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryGrey400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: authController.phoneNumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                            hintText: 'Email@gmai.com',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email is required";
                            } else if (value.length != 10) {
                              return "Phone must to be 10";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 15,
                          color: primaryColorBlack,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryGrey400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: authController.password,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.security,
                              color: primaryColor,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: primaryColor,
                            ),
                            hintText: '******',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            } else if (value.length < 5) {
                              return "Password must to 5 more or";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          authController.register();
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: primaryColorWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
