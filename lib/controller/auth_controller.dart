import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  Future<void> register() async {
    try {} catch (e) {}
  }
}
