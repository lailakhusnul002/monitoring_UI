import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monitoring_santri/peraturan%20view/index.dart';

class baru extends StatefulWidget {
  const baru({super.key});

  @override
  State<baru> createState() => _baruState();
}

class _baruState extends State<baru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/bg2.png'), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, bottom: 10),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/logoputih.png')),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Pesantren Ngalah',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              '   Assalamualaikum...',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '     Selamat Datang di Aplikasi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return indexPeraturan();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 70,
                  width: 325,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage('assets/peraturanicon.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Peraturan Pesantren',
                        style: TextStyle(
                            color: Colors.teal[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 506,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                                      height: 400,
                                      width: 330,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5,
                                              spreadRadius: 0,
                                            ),
                                          ]),
                ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
