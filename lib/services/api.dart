import 'package:monitoring_santri/convig/preference.dart';
import 'package:monitoring_santri/env.dart';
import 'package:monitoring_santri/models/Pelanggaran.dart';
import 'package:monitoring_santri/models/login-response.dart';
import 'package:monitoring_santri/services/app_exception.dart';
import 'package:monitoring_santri/services/base_client.dart';
import 'package:monitoring_santri/services/base_controller.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_santri/models/login-response.dart';

class ApiService extends GetConnect with BaseController {
  Future<Login?> loginApp(String email, String password) async {
    dynamic body = ({"email": email, "password": password});
    final response = await BaseClient()
        .post(BASE_URL, '/login', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var log = loginFromJson(response);
      return log;
    } else {
      return null;
    }
  }

  Future<List<Data>?> pelanggaran() async {
    final token = await getToken();
    final response = await BaseClient().get(BASE_URL, '/getdata', token).catchError((error) {
      if(error is BadRequestException) {
        var apiError = json.decode(error.message!);
      }else{
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var pelanggaran = pelanggaranModelFromJson(response);
      return pelanggaran.data;
    } else {
      return null;
    }
  }

  Future violation() async {
    final token = await getToken();
    final response = await BaseClient().get(BASE_URL, '/getdata', token).catchError((error) {
      if(error is BadRequestException) {
        var apiError = json.decode(error.message!);
      }else{
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var violation = pelanggaranModelFromJson(response);
      return violation.data;
    } else {
      return null;
    }
  }

}
