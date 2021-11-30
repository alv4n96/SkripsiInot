import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class hidekiTojo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.blue,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.blue,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10,
                        left: 13,
                        height: 35,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue.shade300),
                        ),
                      ),
                      Align(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 70),
                          width: 172,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "src/img/mainScreen/bannerHero/6.jpg"))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                // Judul
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 25),
                  // TITLE
                  child: Text(
                    '''Hideki Tojo''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                BuildText(theText: '''


  Riwayat hidup

•	Lahir 30 Desember 1884 di Kojimachi, Tokyo. Berasal dari keluarga kasta samurai, Tojo menempuh pendidikan di era Meiji yang bakal mempersiapkannya menjadi seorang tentara.

•	1899, masuk Akademi Militer Jepang dan lulus sebagai Letnan Dua pada Maret 1905 setelah menempati peringkat 10 dari 363 kadet.

•	1904-1905, setelah lulus dia bertugas di infanteri. Saat itu, Jepang dan Rusia menandatangani Traktat Porstmouth untuk mengakhiri Perang Rusia-Jepang.

•	1937, menjadi kepala  staf  pasukan Kwantang di Manchuria.

•	1938, diangkat menjadi Menteri Perang oleh Pangeran Fumimaro Konoe. Pendukung gerakan Nazi Jerman dan Fasis Italia.

•	1941, menyerang pangkalan militer angkatan laut Amerika Serikat di Hawaii yang memicu perang pasifik.

•	Tojo digantikan pada 1944, menyusul serentetan kekalahan tentara Jepang. Tojo divonis mati tahun 1948, dan menerima hukuman gantung.




Berita

	Dua bom atom atas Hiroshima (6 Agustus 1945) dan Nagasaki (9 Agustus 1945) memaksa Jepang mengaku kalah dan menyerah kepada sekutu. Itu yang dilakukan Kaisar Jepang Hirohito. Jenderal Hideki Tojo yang juga PM Jepang pada Perang Dunia II menolak menyerah dan memilih maju terus berperang. Bagi Tojo menyerah tidak ubahnya pengecut.

''')
                // content
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
