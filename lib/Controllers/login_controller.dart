import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_santri/convig/preference.dart';
import 'package:monitoring_santri/models/login-response.dart';
import 'package:monitoring_santri/router/constant.dart';
import 'package:monitoring_santri/services/api.dart';
import 'package:shared_preferences/shared_preferences.dart';



class LoginController extends GetxController {
  var isLoading = false.obs;
  var log = Login().obs;

  Future<void> loginUser(String email, String password) async {
    isLoading = false.obs;
    final response = await ApiService().loginApp(email, password);
    print(response);
    if (response != null) {
      setToken(response.accessToken.toString()!);
      Get.toNamed(pelanggaranRoute);
    } else {
      Get.snackbar("Error", "Failed");
      isLoading.value = false;
    }
  }
}






