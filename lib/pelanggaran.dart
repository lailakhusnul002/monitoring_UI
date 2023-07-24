import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_santri/Controllers/PelanggaranController.dart';
import 'package:monitoring_santri/login.dart';
import 'package:monitoring_santri/models/Pelanggaran.dart';
import 'package:monitoring_santri/peraturan%20view/index.dart';
import 'package:monitoring_santri/profile%20view/profil.dart';
import 'package:intl/intl.dart';

class Pelanggaran extends StatefulWidget {
  const Pelanggaran({super.key});

  @override
  State<Pelanggaran> createState() => _PelanggaranState();
}

class _PelanggaranState extends State<Pelanggaran> {
  final PelanggaranController pelanggaran = Get.put(PelanggaranController());
  String searchQuery = '';
  List<Violationa> violations = [/* List data pelanggaran asli */];
  List<Violationa> filteredViolations = [];

  @override
  void initState() {
    super.initState();
    pelanggaran.getPelanggaran();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 10),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/logoputih.png')),
                          SizedBox(width: 5),
                          Text(
                            'Pesantren Ngalah',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Assalamualaikum...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Login();
                                        },
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.logout_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                                  Text('Log Out', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                  ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Selamat Datang di Aplikasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    InkWell(
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
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Image(
                                image: AssetImage('assets/peraturanicon.png')),
                            SizedBox(width: 10),
                            Text(
                              'Peraturan Pesantren',
                              style: TextStyle(
                                color: Colors.teal[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),
              Expanded(
                child: Container(
                  height: 518,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Obx(
                    () {
                      if (pelanggaran.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: pelanggaran.pelanggaran!.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          itemBuilder: (context, index) {
                            return _itemPelanggaran(context, index);
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 233, left: 15, right: 15),
              child: Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                            filteredViolations;
                          });
                        },
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Cari Data...',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            filteredViolations;
                          },
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemPelanggaran(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:  3),
        // Row(
        //   children: [
        //     Image(
        //       image: AssetImage('assets/propil.png'),
        //     ),
        //     SizedBox(width: 10),
        //     // Column(
        //     //   crossAxisAlignment: CrossAxisAlignment.start,
        //     //   children: [
        //     //     Text(
        //     //       pelanggaran.pelanggaran[index].idYayasan!,
        //     //       style: TextStyle(
        //     //         color: Colors.black,
        //     //         fontWeight: FontWeight.bold,
        //     //         fontSize: 12,
        //     //       ),
        //     //     ),
        //     //     Text(
        //     //       pelanggaran.pelanggaran[index].createdAt!,
        //     //       style: TextStyle(
        //     //         color: Colors.grey,
        //     //         fontWeight: FontWeight.bold,
        //     //         fontSize: 12,
        //     //       ),
        //     //     ),
        //     //   ],
        //     // ),
        //   ],
        // ),
        // SizedBox(height: 15),
        // Container(
        //   height: 2,
        //   width: 300,
        //   decoration: BoxDecoration(color: Colors.grey[300]),
        // ),
        // SizedBox(height: 10),
        // Text(
        //   pelanggaran.pelanggaran[index].name!,
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 12,
        //   ),
        // ),
        Column(
          children: pelanggaran.pelanggaran[index].violationa!
              .map(
                (e) => _detailPelanggaran(context, e),
              )
              .toList(),
        )
      ],
    );
  }

  Widget _detailPelanggaran(BuildContext context, Violationa e) {
    String formattedDate = DateFormat('d MMM y').format(
      DateTime.parse(e.createdAt!),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.42,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pelanggaran',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 239, 203),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text(e.jenispelanggaran!)))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(e.pelanggaran!),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hukuman',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(e.hukuman!),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bukti Pelanggaran',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.grey[300]),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: e.foto! == null
                          ? Image.asset(
                              'assets/propil.png',
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              'https://ngalah.gosir.my.id/' + e.foto!,
                              fit: BoxFit.cover,
                            )),
                ),
              )
              // Text(e.foto!),
            ],
          ),
        ),
      ),
    );
  }
}
