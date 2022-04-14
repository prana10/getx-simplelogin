import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:loginform/app/common/common.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: ColorConst.textWhiteColor,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Sign In to Continue',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: ColorConst.textSecondaryColor,
              ),
            ),
            SizedBox(height: 40),
            field(context, "email address", "enter your email",
                obscureText: false),
            SizedBox(height: 24),
            fieldPassword(context, "password", "enter your password",
                obscureText: true),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConst.primaryColor,
              ),
              child: TextButton(
                onPressed: () {
                  controller.login();
                  print("email controller: ${controller.emailController}");
                  print("password controller: ${controller.passwordController}");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: ColorConst.textWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column field(BuildContext context, String label, hint,
      {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: ColorConst.textWhiteColor,
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConst.primaryColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            obscureText: obscureText,
            controller: controller.emailController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: ColorConst.textSecondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column fieldPassword(BuildContext context, String label, hint,
      {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: ColorConst.textWhiteColor,
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConst.primaryColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            obscureText: obscureText,
            controller: controller.passwordController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: ColorConst.textSecondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
