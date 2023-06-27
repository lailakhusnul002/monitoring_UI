import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pelanggaranSedang extends StatefulWidget {
  const pelanggaranSedang({super.key});

  @override
  State<pelanggaranSedang> createState() => _pelanggaranSedangState();
}

class _pelanggaranSedangState extends State<pelanggaranSedang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: 
              [Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/bg2.png'), fit: BoxFit.cover)),
                child: Column(
          children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: InkWell(
                      onTap: () {
                          Navigator.of(context).pop();
                        },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 5),
                    child: Text(
                      'Pelanggaran Sedang',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Container(
                  height: 627,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60, left: 15, right: 15),
                              child: Container(
                                height: 200,
                                width: 500,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10, left: 10),
                                          child: Image(
                                              image:
                                                  AssetImage('assets/peraturanicon.png')),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ayat 1',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(height: 3,),
                                              Text(
                                                'Pacaran',
                                                style: TextStyle(
                                                    color: Colors.teal[800],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 10, right: 10),
                                      child: Container(
                                        height: 2,
                                        width: 500,
                                        decoration:
                                            BoxDecoration(color: Colors.grey[200]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10, left: 10),
                                      child: Text('Keterangan', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                      child: Text('Barang siapa yang menjalin asmara dengan ghairu mukhrim (pacaran) maka akan dikenai sanksi', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 10),
                                      child: Text('Hukuman', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                      child: Text('Memperjelas statusnya (dipinang) dan apabila tidak diindahkan maka akan diserahkan DPP dan sanksi tergantung kebijakan DPP', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 225,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 2',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Keluar Tanpa Izin',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Barang siapa yang keluar tanpa izin maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('(Bagi Putra) Berjamaah lima waktu sekurang-kurangnya 10 hari dan membaca undang-undang pesantren 4 kali dalam mukhadoroh. (Bagi Putri) membersihkan halam dan membuang sampah asrama serta diskores perizinan dalam jangka 1 bulan', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 3',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Boncengan dengan Ghairu Mukhrim',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan tindak pelanggaran boncengan dengan ghairu mukhrim maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Membaca Al-Quran sekurang-kurangnya 3 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 4',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Pemerasan',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang tindak pelanggaran pemerasan maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Membaca Al-Quran sekurang-kurangnya 3 juz dalam 1 waktu, dan harus mengembalikan nominal sesuai nominal pemerasannya', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 5',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Membawa Tamu Tanpa Izin',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang membawa tamu tanpa izin pengurus maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Menghafal surat Waqiah maksimal dalam jangka waktu 1 minggu dan wajib sholat berjamaah lima waktu dalam jangka waktu sekurang-kurangnya 5 hari', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 6',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Homo atau Lesbi',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan tindak pelanggaran homo / lesbi maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Membersihkan lingkungan asrama yang disesuaikan dengan tempat kejadian dengan memakai atribut jenis pelanggarannya', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 210,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 7',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Bermalam di Luar Lingkungan Asrama',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan tindak pelanggaran bermalam di luar lingkungan asrama maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
                                  child: Text('Wajib sholat berjamaah sekurang-kurangnya 1 minggu dan membaca Al-Quran sekurang-kurangnya 1 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 8',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Mengintip Ghairu Mukhrim',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang mengintip ghairu mukhrim maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Dikirap ke lingkungan asrama yang diintip dengan memakai atribut jenis pelanggarannya', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 9',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Menyalahgunakan Perizinan',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang dengan sengaja menyalahgunakan perizinan maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Menghafal 1/2 juz amma maksimal dalam jangka waktu satu minggu, dan selanjutnya perizinan diskores selama 2 bulan', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 10',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Berkelahi',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan perkelahian maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Wajib sholat berjamaah 5 waktu sekurang-kurangnya 1 minggu dan ditambah dengan membaca Al-Quran sekurang-kurangnya 3 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 11',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Mengganggu Ketenangan Masyarakat \ndan Membuat Onar',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang mengganggu ketenangan masyarakat dan membuat onar maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Menguras kolaan dan membaca Al-Quran sekurang-kurangnya 2 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 12',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Mengganggu Ketenangan Pesantren',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang mengganggu ketenangan pesantren maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Membersihkan asrama dan membaca Al-Quran sekurang-kurangnya 2 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 13',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Penipuan',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang penipuan maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Wajib sholat berjamaah 5 waktu sekurang-kurangnya dalam jangka waktu 10 hari', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 14',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Bertato',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan tindak pelanggaran bertato maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Wajib menghilangkan tatonya', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 15',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Menentang Pengurus atau Mengancam',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang menentang pengurus apalagi sampai mengancam maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Menghafal 1/2 juz amma maksimal dalam jangka waktu 1 minggu dan selanjutnya tidak diberi izin pulang/keluar selama 2 bulan', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 16',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Merusak Fasilitas di Lingkungan Pesantren',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang merusak fasilitas di lingkungan pesantren maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Mengganti biaya kerusakan dan biaya pembenahannya, selanjutnya wajib sholat 5 waktu dengan berjamaah sekurang-kurangnya 5 hari', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 17',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Nonton TV di Luar Lingkungan Pesantren \n(Bagi Santri Putri)',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang nonton TV di luar lingkungan pesantren maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Wajib sholat 5 waktu dengan berjamaah sekurang-kurangnya 5 hari dan membaca Al-Quran sekurang-kurangnya 2 juz dalam 1 waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 250,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 18',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Membawa Sepeda Motor, HP, dan \nElektronik Tanpa Izin',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang membawa sepeda motor, HP, dan elektronik tanpa izin maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Penahanan barang sementara dan orangtua dapat yang mengambilnya, selanjutnya tidak diberikan izin keluar/pulang sekurang-kurangnya dalam jangka waktu 1 bulan. Untuk pelanggaran sepeda motor dikenakan biaya penebusan sebesar Rp 100.000 dan untuk elektronik sebesar Rp 25.000', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 19',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Melindungi Tindak Pelanggaran',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melindungi tindak pelanggaran maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Sanksi 2 kali lipat dari sanksi yang diberikan kepada pelaku kejahan itu sendiri', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 20',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Meneror dan Mengancam',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan teror dan mengancam kepada sesamanya maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Permintaan maaf secara terbuka kepada yang diteror dan selanjutnya wajib sholat berjamaah 5 waktu sekurang-kurangnya dalam jangka waktu 15 hari', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 21',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Mencucikan Pakaian Ghairu Mukhrim',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang mencucikan pakaian ghairu mukhrim maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Membuat pernyataan terbuka di depan seluruh santri dan selanjutnya wajib ikut sholat berjamaah 5 waktu sekurang-kurangnya dalam jangka waktu 15 hari', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 22',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Memalsukan Identitas',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang sengaja memalsukan identitas pesantren maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                                  child: Text('Wajib lapor setiap hari sekurang-kurangnya dalam jangka waktu 1 bulan dan wajib ikut sholat berjamaah 5 waktu sekurang-kurangnya dalam jangka waktu 1 minggu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 250,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 23',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Melihat Pornografi dan Pertunjukan yang \nDilarang oleh Pesantren (Menonton bioskop, \nwayang, ludruk, konser, orkes, sepak bola, \ndi luar lingkungan PP)',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melihat pornografi dan pertunjukan yang dilarang oleh Pesantren maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Wajib lapor setiap hari sekurang -kurangnya dalam jangka waktu 1 bulan dan wajib ikut sholat berjamaah lima waktu sekurang-kurangnya dalam jangka waktu 1 minggu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 240,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 24',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Menyebarkan dan Membuang \nMedia Pornografi',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang dengan sengaja menyebarkan dan menyimpan media pornografi maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Penyitaan barang dan wajib lapor setiap hari sekurang-kurangnya dalam jangka waktu 1 bulan serta wajib ikut sholat berjamaah lima waktu sekurang-kurangnya dalam jangka waktu 1 minggu ditambah membaca Al-Quran 1 juz dalam satu waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 230,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 25',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Menyimpan Senjata Tajam dan Alat-alat \nyang Membahayakan Tanpa Izin ',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang  menyimpan senjata tajam dan alat-alat yang membahayakan tanpa izin maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Penyitaan dan diperingatkan, selanjutnya orang tua yang dapat mengambilnya, dan wajib membaca Al-quran sekurang-kurangnya 2 juz dalam satu waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 26',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Merokok Bagi (Santri Puntri)',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang merokok maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Membersihkan kolaan asrama putri dan diperingatkan, selanjutnya orang tua dipanggil, dan wajib membaca Al-Quran sekurang-kurangnya 2 juz dalam satu waktu ', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Container(
                            height: 210,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      child: Image(
                                          image:
                                              AssetImage('assets/peraturanicon.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ayat 27',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Mencemarkan Nama Baik',
                                            style: TextStyle(
                                                color: Colors.teal[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 10, right: 10),
                                  child: Container(
                                    height: 2,
                                    width: 500,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Keterangan', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang mencemarkan nama baik sesama santri maka akan dikenai sanksi', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Text('Hukuman', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('permohonan maaf kepada pihak yang dirugikan secara terbuka dan wajib membaca Al-Quran sekurang kurangnya 2 juz dalam satu waktu', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ],
                ),
              ),
              Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 120),
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
                  Text(
                    'Cari Data...',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
              Padding(
                      padding:
                          const EdgeInsets.only(top: 180, left: 15, right: 15),
                      child: Container(
                        height: 20,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.teal[800],
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Pasal II Pelanggaran Sedang',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
            ],
            
        ),
        );
  }
}
