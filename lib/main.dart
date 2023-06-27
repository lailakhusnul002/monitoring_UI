import 'package:flutter/material.dart';
import 'package:monitoring_santri/baru.dart';
import 'package:monitoring_santri/pelanggaran.dart';
import 'package:monitoring_santri/peraturan%20view/berat.dart';
import 'package:monitoring_santri/peraturan%20view/index.dart';
import 'package:monitoring_santri/peraturan%20view/ringan.dart';
import 'package:monitoring_santri/peraturan%20view/sedang.dart';
import 'package:monitoring_santri/router/constant.dart';
import 'package:get/get.dart';
import 'package:monitoring_santri/router/router.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      // home: pelanggaran(),
      initialRoute: loginRoute,
      getPages: routes
    );
  }

}