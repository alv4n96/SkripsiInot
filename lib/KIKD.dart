import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skripsi_toni/mainScreen.dart';
import 'package:skripsi_toni/widget.dart';

class KIKDApp extends StatefulWidget {
  @override
  KIKDAppState createState() => KIKDAppState();
}

class KIKDAppState extends State<KIKDApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              //right way: use context in below level tree with MaterialApp
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTopTabs(),
            HomeTopTabs(),
          ],
        ),
      ),
    );
  }

  HomeTopTabs() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 8.0,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Kompetensi Inti',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Kompetensi Dasar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            buildText(theText: '''
    
1.	Menghayati dan mengamalkan ajaran agama yang dianut.
    
2.	Menghayati dan mengamalkan perilaku jujur, disiplin, santun, peduli (gotong royong, kerjasama, toleran, damai), bertanggung jawab, responsif, dan pro-aktif dalam berinteraksi secara efektif sesuai dengan perkembangan anak di lingkungan, keluarga, sekolah, masyarakat dan lingkungan alam sekitar, bangsa, negara, kawasan regional, dan kawasan internasional.
    
3.	Memahami, menerapkan, dan menganalisis pengetahuan faktual,  konseptual, prosedural, dan metakognitif berdasarkan rasa ingin tahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kemanusiaan, kebangsaan, kenegaraan, dan peradaban terkait penyebab fenomena dan kejadian, serta menerapkan pengetahuan prosedural pada bidang kajian yang spesifik sesuai dengan bakat dan minatnya untuk memecahkan masalah.
    
4.	Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, bertindak secara efektif dan kreatif, serta mampu menggunakan metode sesuai kaidah keilmuan.
            '''),
            buildText(theText: '''

3.6. Menganalisis pengaruh Perang Dunia I dan Perang Dunia II terhadap kehidupan politik global (LBB dan PBB) dalam bentuk tulisan dan/atau media lain.

4.6. Menyajikan hasil analisis tentang pengaruh Perang Dunia I dan Perang Dunia II terhadap kehidupan politik global (LBB dan PBB) dalam bentuk tulisan dan/atau media lain.
       '''),
          ],
        ),
      ),
    );
  }
}
