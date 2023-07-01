import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:monitoring_santri/env.dart';
import 'package:monitoring_santri/models/Pelanggaran.dart';
import 'package:monitoring_santri/services/api.dart';
import 'package:monitoring_santri/convig/preference.dart';


// class PelanggaranController extends GetxController {
//   RxList<Data> dataList = <Data>[].obs;

//   @override
//   void onInit() {
//     fetchData();
//     super.onInit();
//   }

//   Future<void> fetchData() async {
//     final token = await getToken();
//     final response = await http.get(Uri.parse('$BASE_URL/getdata'));
//     if (response.statusCode == 200) {
//       final pelanggaran = pelanggaranModelFromJson(response.body);
//       dataList.value = pelanggaran.data!;
//     } else {
//       // Handle error jika request gagal
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }
// }

class PelanggaranController extends GetxController {
  var isLoading = true.obs;
  var isLoadingPage = false.obs;
  var pelanggaran = <Data>[].obs;
  var violation = <Violationa>[].obs;

List<dynamic> dataList = [];

@override
  void onInit() {
    super.onInit();
    fetchData();
  }
  void fetchData() async {
    dataList.addAll(pelanggaran);
    dataList.addAll(violation);
  }
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
}
// void getViolationa() async {
//     try {
//       isLoading(true);
//       var res = await ApiService().violation();
//       if (res != null) {
//         violation.value = res;
//       } else {}
//     } finally {
//       isLoading(false);
//     }
//   }
// }
