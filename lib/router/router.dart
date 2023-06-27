import 'package:get/get.dart';
import 'package:monitoring_santri/login.dart';
import 'package:monitoring_santri/pelanggaran.dart';
import 'package:monitoring_santri/router/constant.dart';



final List<GetPage<dynamic>>? routes = [

  GetPage(name: loginRoute, page: () => Login()),
   GetPage(name: pelanggaranRoute, page: () => pelanggaran()),

];