import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_santri/Controllers/PelanggaranController.dart';
import 'package:monitoring_santri/models/Pelanggaran.dart';
import 'package:monitoring_santri/peraturan%20view/index.dart';

class Pelanggaran extends StatefulWidget {
  const Pelanggaran({super.key});

  @override
  State<Pelanggaran> createState() => _PelanggaranState();
}

class _PelanggaranState extends State<Pelanggaran> {
  final PelanggaranController pelanggaran = Get.put(PelanggaranController());

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  Text(
                    'Assalamualaikum...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Selamat Datang di Aplikasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 15),
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
                      width: 325,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image(image: AssetImage('assets/peraturanicon.png')),
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
            SizedBox(height: 20),
            Container(
              height: 526,
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      itemBuilder: (context, index) {
                        return _itemPelanggaran(context, index);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemPelanggaran(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
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
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.30,
        decoration: BoxDecoration(color: Colors.white,
        
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      
                                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text(e.jenispelanggaran!)))
                ],
              ),
              SizedBox(height: 5,),
              Text(e.pelanggaran!),
               SizedBox(height: 10,),
              Text(
                'Hukuman',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text(e.hukuman!),
              SizedBox(height: 10,),
              Text(
                'Bukti Pelanggaran',
                style: TextStyle(fontWeight: FontWeight.bold),),
                Text(e.foto!),
                
            ],
          ),
        ),
      ),
    );
  }
}

















        // body: Column(
        //   children: [
        //     Stack(
        //       children: [
        //         Container(
        //           height: MediaQuery.of(context).size.height,
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               image: DecorationImage(
        //                   image: AssetImage('assets/bg2.png'),
        //                   fit: BoxFit.cover)),
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             Row(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.only(left: 15, top: 50),
        //                   child:
        //                       Image(image: AssetImage('assets/logoputih.png')),
        //                 ),
        //                 SizedBox(
        //                   width: 5,
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.only(left: 5, top: 50),
        //                   child: Text(
        //                     'Pesantren Ngalah',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 15, top: 10),
        //               child: Text(
        //                 'Halo Laila...',
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 25),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(
        //                 left: 15,
        //               ),
        //               child: Text(
        //                 'Selamat Datang di Aplikasi',
        //                 style: TextStyle(color: Colors.white, fontSize: 15),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 Navigator.of(context).push(
        //                   MaterialPageRoute(
        //                     builder: (context) {
        //                       return indexPeraturan();
        //                     },
        //                   ),
        //                 );
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 15, right: 15),
        //                 child: Container(
        //                   height: 70,
        //                   width: 500,
        //                   decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10)),
        //                   child: Row(
        //                     children: [
        //                       SizedBox(
        //                         width: 10,
        //                       ),
        //                       Image(
        //                           image:
        //                               AssetImage('assets/peraturanicon.png')),
        //                       SizedBox(
        //                         width: 10,
        //                       ),
        //                       Text(
        //                         'Peraturan Pesantren',
        //                         style: TextStyle(
        //                             color: Colors.teal[700],
        //                             fontSize: 20,
        //                             fontWeight: FontWeight.bold),
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 36,
        //             ),
        //             Container(
        //               height: 502,
        //               width: MediaQuery.of(context).size.width,
        //               decoration: BoxDecoration(
        //                   color: Colors.white,
        //                   borderRadius: BorderRadius.only(
        //                       topLeft: Radius.circular(15),
        //                       topRight: Radius.circular(15))),
        //               child: SingleChildScrollView(
        //                 child: Column(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only( left: 15, right: 15, top: 70),
        //                       child: Obx(() {
        //                         if (pelanggaran.isLoading.value) {
        //                           return const Center(child: CircularProgressIndicator());
        //                         } else {
        //                           return ListView.builder(
        //                           itemCount: pelanggaran.pelanggaran!.length,
        //                           shrinkWrap: true,
        //                           scrollDirection: Axis.horizontal, 
        //                           itemBuilder: (context, index) {
        //                         return Container(
        //                             height: 400,
        //                             width: 500,
        //                             decoration: BoxDecoration(
        //                                 color: Colors.white,
        //                                 borderRadius: BorderRadius.circular(5),
        //                                 boxShadow: [
        //                                   BoxShadow(
        //                                     color: Colors.grey,
        //                                     blurRadius: 5,
        //                                     spreadRadius: 0,
        //                                   ),
        //                                 ]),
        //                                 child: Column(
        //                                     crossAxisAlignment: CrossAxisAlignment.start,
        //                                     children: [
        //                                       Row(
        //                                         children: [
        //                                           Padding(
        //                                             padding: const EdgeInsets.only(
        //                                                 top: 10, left: 10),
        //                                             child: Image(
        //                                               image: AssetImage(
        //                                                 'assets/propil.png',
        //                                               ),
        //                                             ),
        //                                           ),
        //                                           Padding(
        //                                             padding: const EdgeInsets.only(
        //                                                 left: 10, top: 10),
        //                                             child: Column(
        //                                               crossAxisAlignment:
        //                                                   CrossAxisAlignment.start,
        //                                               children: [
        //                                                 Text(
        //                                                   pelanggaran.pelanggaran[index].idYayasan!,
        //                                                   style: TextStyle(
        //                                                       color: Colors.black,
        //                                                       fontWeight: FontWeight.bold,
        //                                                       fontSize: 12),
        //                                                 ),
        //                                                 Text(
        //                                                  pelanggaran.pelanggaran[index].createdAt!,
        //                                                   style: TextStyle(
        //                                                       color: Colors.grey,
        //                                                       fontWeight: FontWeight.bold,
        //                                                       fontSize: 12),
        //                                                 )
        //                                               ],
        //                                             ),
        //                                           )
        //                                         ],
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.all(10),
        //                                         child: Container(
        //                                           height: 2,
        //                                           width: 400,
        //                                           decoration: BoxDecoration(
        //                                               color: Colors.grey[300]),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                           left: 18,
        //                                         ),
        //                                         child: Text(
        //                                           pelanggaran.pelanggaran[index].name!,
        //                                           style: TextStyle(
        //                                               color: Colors.black,
        //                                               fontWeight: FontWeight.bold,
        //                                               fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(left: 18),
        //                                         child: Text(
        //                                           'Pelanggaran Santri',
        //                                           style: TextStyle(
        //                                               color: Colors.black, fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             left: 18, top: 10),
        //                                         child: Text(
        //                                           'Kategori Pelanggaran:',
        //                                           style: TextStyle(
        //                                               color: Colors.grey,
        //                                               fontWeight: FontWeight.bold,
        //                                               fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(left: 18),
        //                                         child: Text(
        //                                           'Ringan',
        //                                           style: TextStyle(
        //                                               color: Colors.black, fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             left: 18, top: 10),
        //                                         child: Text(
        //                                           'Hukuman:',
        //                                           style: TextStyle(
        //                                               color: Colors.grey,
        //                                               fontWeight: FontWeight.bold,
        //                                               fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(left: 18),
        //                                         child: Text(
        //                                           'Hukuman Santri',
        //                                           style: TextStyle(
        //                                               color: Colors.black, fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             left: 18, top: 10),
        //                                         child: Text(
        //                                           'Bukti:',
        //                                           style: TextStyle(
        //                                               color: Colors.grey,
        //                                               fontWeight: FontWeight.bold,
        //                                               fontSize: 12),
        //                                         ),
        //                                       ),
        //                                       Padding(
        //                                         padding: const EdgeInsets.all(10),
        //                                         child: Container(
        //                                           height: 150,
        //                                           width: 400,
        //                                           decoration: BoxDecoration(
        //                                               color: Colors.grey[300],
        //                                               borderRadius:
        //                                                   BorderRadius.circular(5)),
        //                                         ),
                                                
        //                                       ),
        //                                     ],
        //                                   ),
                                          
        //                           );
        //                         },
                                   
        //                         );
        //                         }
        //                       }
                              
        //                       ),
        //                     ),
                            
        //                   ],
                          
        //                 ),
                        
        //               ),
        //             )
        //           ],
        //         ),
                
        //         Padding(
        //           padding: const EdgeInsets.only(top: 310, left: 15, right: 15),
        //           child: Container(
        //             height: 20,
        //             width: 500,
        //             decoration: BoxDecoration(
        //                 color: Colors.teal[800],
        //                 borderRadius: BorderRadius.circular(50)),
        //             child: Center(
        //               child: Text(
        //                 'Data Pelanggaran',
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 12,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(top: 245, left: 15, right: 15),
        //           child: Container(
        //             height: 50,
        //             width: 500,
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(10),
        //               boxShadow: [
        //                 BoxShadow(
        //                   color: Colors.grey,
        //                   blurRadius: 5,
        //                   spreadRadius: 0,
        //                 ),
        //               ],
        //             ),
        //             child: Row(
        //               children: [
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 Text(
        //                   'Cari Data...',
        //                   style: TextStyle(color: Colors.grey, fontSize: 15),
        //                 ),
        //                 SizedBox(
        //                   width: 200,
        //                 ),
        //                 Icon(Icons.search)
        //               ],
        //             ),
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),