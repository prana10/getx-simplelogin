import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (emailController.text == null || emailController.text.isEmpty) {
      Get.snackbar(
        'Login',
        'Email is required',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        margin: EdgeInsets.all(10),
      );
    } else if(passwordController.text == null || passwordController.text.isEmpty) {
      Get.snackbar(
        'Login',
        'Password is required',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        margin: EdgeInsets.all(10),
      );
    }

    if (emailController.text == 'admin' && passwordController.text == 'admin') {
      Get.snackbar(
        'Welcome Admin',
        'Login success',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        borderRadius: 10,
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 1),
      );
    } else {
      Get.snackbar(
        'Login',
        'Login failed',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 1),
      );
    }
  }
}
