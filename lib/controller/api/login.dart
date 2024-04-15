import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/token.dart';

class LoginService {
  Future Login(String phone, String pass) async {
    Map<String, dynamic> response = await ApiController().post(
      url: 'login',
      body: {
        'phone': phone,
        'password': pass,
      },
    );
    String token = response['data']['token'];
    print(token);
    await TokenStorage.savetoken(token);
    if (response['status'] == 1) {
       await Get.snackbar(
        "Log in",
    "You are log in successfully",

        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.grey.withOpacity(0.2),
        //maxWidth: 250,
        //borderColor: Colors.white,
      );
      Get.toNamed('/afterlogin');
    } else {
      await Get.snackbar(
        "Failed",
    "Please , enter correct information",

        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.grey.withOpacity(0.2),
        //maxWidth: 250,
        //borderColor: Colors.white,
      );
    }
  }
}
