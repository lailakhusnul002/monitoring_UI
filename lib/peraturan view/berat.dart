import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pelanggaranBerat extends StatefulWidget {
  const pelanggaranBerat({super.key});

  @override
  State<pelanggaranBerat> createState() => _pelanggaranRinganState();
}

class _pelanggaranRinganState extends State<pelanggaranBerat> {
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
                      'Pelanggaran Berat',
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
                                                'Perzinaan',
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
                                      child: Text('Barang siapa yang melakukan perzinaan maka akan dikenai sanksi', style: TextStyle(
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
                                      child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Nguras kolaan lintas asrama, serta dikirap dan dikeluarkan dari pondok pesantren untuk diserahkan kepada orangtuanya', style: TextStyle(
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
                                            'Membunuh',
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
                                  child: Text('Barang siapa yang melakukan pembunuhan maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Dikeluarkan dari pondok dan selanjutnya diserahkan kepada pihak yang berwajib (Polisi)', style: TextStyle(
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
                                            'Pengedar Narkoba, Narkotika, dan \nPsikotropika',
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
                                  child: Text('Barang siapa yang mengedarkan narkoba, narkotika, dan psikotropika maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Nguras kolaan lintas asrama dan selanjutnya dikeluarkan dari pondok serta diserahkan kepada pihak berwajib (Polisi)', style: TextStyle(
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
                                            'Mengonsumsi Narkoba, Narkotika, dan \nPsikotropika',
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
                                  child: Text('Barang siapa yang mengonsumsi narkoba, narkotika, dan psikotropika maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Nguras kolaan lintas asrama dan selanjutnya dipulangkan untuk diserahkan kepada orangtuanya', style: TextStyle(
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
                                            'Berciuman dan Hubungan Berlebihan',
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
                                  child: Text('Barang siapa yang melakukan pelanggaran berciuman dan berhubungan secara berlebihan maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Nguras kolaan lintas asrama serta dipanggil orangtuanya', style: TextStyle(
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
                                            'MIRAS (Minum-minuman Air Keras)',
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
                                  child: Text('Barang siapa yang melakukan MIRAS (meminum-minuman keras) maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Nguras kolaan lintas asrama serta dipanggil orangtuanya', style: TextStyle(
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
                                            'Mencuri',
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
                                  child: Text('Barang siapa yang melakukan tindak pencurian maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Dicukur gundul dan (Bagi Putri) Membersihkan asrama, serta wajib mengembalikan barang sesuai yang dicuri', style: TextStyle(
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
                                            'Perjudian',
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
                                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                                  child: Text('Barang siapa yang melakukan perjudian maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Bagi Putra) Menguras kolaan asrama putri dan selanjutnya diserahkan kepada pembina keamanan. (Bagi Putri) Menguras kolaan dan diserahkan kepada DPP Pengurus', style: TextStyle(
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
                                            'Menyebarkan Ajaran Menyimpang dari Ajaran \nAhlus Sunnah Wal Jamaah',
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
                                      top: 5, left: 10, right: 10),
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
                                  child: Text('Barang siapa yang dengan sengaja menyebarkan ajaran yang menyimpang dari Ahlus sunnah wal jamaah maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Wajib sholat 5 waktu dengan berjamaah sekurang-kurangnya 30 hari dan diserahkan kepada pangasuh pondok pesantren', style: TextStyle(
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
                                            'Melakukan Ajaran yang Menyimpang dari \nAjaran Ahlus Sunnah Wal Jamaah',
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
                                  child: Text('Barang siapa yang melakukan ajaran yang menyimpang dari Ahlus sunnah wal jamaah maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Wajib sholat 5 waktu dengan berjamaah sekurang-kurangnya 15 hari dan diserahkan kepada pangasuh pondok pesantren', style: TextStyle(
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
                                            'Membawa Massa dari Luar untuk \nMengganggu Ketenangan',
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
                                  child: Text('Barang siapa yang dengan sengaja membawa massa untuk mengganggu stabilitas keamanan Pesantren maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Diserahkan kepada pihak yang berwajib (Polisi)', style: TextStyle(
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
                                            'Menyalahgunakan Jabatan',
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
                                  child: Text('Barang siapa yang menyalahgunakan jabatan sebagai pengurus maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Dicopot dari jabatannya dan diumumkan kepada seluruh santri dan selanjutnya menjadi santri biasa', style: TextStyle(
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
                                            'Otak Pelaku Pelanggaran',
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
                                  child: Text('Barang siapa yang menjadi otak pelaku tindak pelanggaran Pesantren maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('Sanksi dua kali lipat dari pelaku pelanggaran', style: TextStyle(
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
                                            'Mencemarkan Nama Baik Pesantren',
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
                                  child: Text('Barang siapa yang mencemarkan nama baik Pesantren maka akan dikenai sanksi', style: TextStyle(
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
                                  child: Text('(Santri Putra) Menguras kolaan putri dan (Santri Putri) Menguras kolaan lintas asrama', style: TextStyle(
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
                            'Pasal I Pelanggaran Berat',
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
