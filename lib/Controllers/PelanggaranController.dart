import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:monitoring_santri/models/Pelanggaran.dart';
import 'package:monitoring_santri/services/api.dart';

class PelanggaranController extends GetxController {
  var isLoading = true.obs;
  var isLoadingPage = false.obs;
  var pelanggaran = <Data>[].obs;
  var violation = <Violationa>[].obs;

  void getPelanggaran() async {
    try {
      isLoading(true);
      var res = await ApiService().pelanggaran();
      if (res != null) {
        pelanggaran.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
  
void getViolationa() async {
    try {
      isLoading(true);
      var res = await ApiService().violation();
      if (res != null) {
        violation.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
