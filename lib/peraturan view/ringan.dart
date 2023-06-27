import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pelanggaranRingan extends StatefulWidget {
  const pelanggaranRingan({super.key});

  @override
  State<pelanggaranRingan> createState() => _pelanggaranRinganState();
}

class _pelanggaranRinganState extends State<pelanggaranRingan> {
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
                      'Pelanggaran Ringan',
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
                                                'Merokok bagi Putra (Tingkat SLTA ke Bawah)',
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
                                      child: Text('Barang siapa yang merokok (Tingkat SLTA ke bawah) maka akan dikenai sanksi', style: TextStyle(
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
                                      child: Text('Membersihkan sampah di lingkungan asrama masing - masing', style: TextStyle(
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
                                            'Ayat 2',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Tidak Ikut Kegiatan Pesantren (Tanpa Izin)',
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
                                  child: Text('Barang siapa yang tidak mengikuti kegiatan Pesantren tanpa izin maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Membaca Al-Quran 2 juz dalam 1 waktu (putra), diserahkan kepada birornya masing - masing (putri)', style: TextStyle(
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
                                            'Ayat 3',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Semiran',
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
                                  child: Text('Barang siapa yang rambutnya disemir maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Dicukur oleh pengurus dan selanjutnya membaca surat Yasin dan Waqiah', style: TextStyle(
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
                                            'Ayat 4',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Rambut Panjang (Bagi Santri Putra)',
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
                                  child: Text('Barang siapa yang berambut panjang maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Dicukur dengan maksud untuk lebih dirapikan sesuai dengan etika Pesantren', style: TextStyle(
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
                                            'Tindian',
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
                                  child: Text('Barang siapa yang dengan sengaja melakukan tindian maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Membaca tahlil dalam 1 waktu sekurang-kurangnya 3 kali', style: TextStyle(
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
                                            'Memakai Aksesoris yang Tidak Pantas \nMenurut Etika Pesantren',
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
                                  child: Text('Barang siapa yang memakai aksesoris yang tidak pantas maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Penyitaan aksesoris yang dipakai dan diperingatkan', style: TextStyle(
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
                                            'Ayat 7',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Berpakaian Tidak Sopan Menurut Etika \nPesantren',
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
                                  child: Text('Putra: Memakai celana 3/4 dan yang kurang sopan. Putri: Memakai pakaian pres body, ketat, dan tidak sopan. Maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Penyitaan barang yang dipakai dan diperingatkan, selanjutnya orangtua yang dapat mengambilnya', style: TextStyle(
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
                                            'Bersalaman dengan Ghairu Mukhrim \nTanpa Izin',
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
                                  child: Text('Barang siapa yang bersalaman dengan ghairu mukhrim maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Membaca Al-Quran 1 Juz dalam 1 waktu', style: TextStyle(
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
                                            'Memanggil Ghairu Mukhrim Diluar \nKetentuan',
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
                                  child: Text('Barang siapa yang memanggil ghairu mukhrim diluar ketentuan maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Membaca Al-Quran 1 juz dalam 1 waktu', style: TextStyle(
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
                                            'Ayat 10',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(
                                            'Memanggil Ghairu Mukhrim Tanpa Izin',
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
                                  child: Text('Barang siapa yang memanggil ghairu mukhrim tanpa izin maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Membaca Al-Quran 1 juz dalam 1 waktu', style: TextStyle(
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
                            'Pasal III Pelanggaran Ringan',
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
