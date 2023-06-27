import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoring_santri/Controllers/login_controller.dart';
import 'package:monitoring_santri/models/login-response.dart';
import 'package:monitoring_santri/pelanggaran.dart';
import 'package:http/http.dart' as myHttp;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginController loginCon = Get.put(LoginController());

  bool validate = false;
  bool inHiddenPass = true;
  bool _isHidden = true;

  @override
  void initState(){
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/Masuk.png'),
                      fit: BoxFit.cover)),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 650,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                    Column(
                      children: [
                        Image(image: AssetImage('assets/decorr.png')),
                        Image(image: AssetImage('assets/logo.png')),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pesantren Ngalah',
                          style: TextStyle(
                              color: Colors.teal[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: TextField(
                            controller: email,
                            style: TextStyle(color: Colors.teal[700]),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_outline_rounded,
                                  color: Colors.teal[700],
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.teal[700], fontSize: 15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, top: 10),
                          child: TextField(
                            controller: password,
                            obscureText: true,
                            style: TextStyle(color: Colors.teal[700]),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.teal[700],
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Colors.teal[700], fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async{
                        if(email.text.isEmpty || password.text.isEmpty){
                          setState(() {
                            validate = true;
                          });
                        } else {
                          await loginCon.loginUser(email.text, password.text);
                        }
                      },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 98),
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal[700]),
                      ),
                    ),
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
