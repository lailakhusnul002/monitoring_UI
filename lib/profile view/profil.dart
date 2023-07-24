import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoring_santri/pelanggaran.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(children: [
          Image.asset(
            'assets/profil.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                                Navigator.of(context).pop(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Pelanggaran();
                                    },
                                  ),
                                );
                              },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('Profil', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
