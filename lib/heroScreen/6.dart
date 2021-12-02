import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class hidekiTojo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.red[900],
              title: Text(
                "Hideki Tojo",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: ClipRRect(
                child: Image.asset(
                  "src/img/flag/6.jpg",
                  width: screenWidht,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, left: 25),
              // TITLE
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  '''Hideki Tojo''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      // fontWeight: FontWeight.w600,
                      fontFamily: 'Jaapokki'),
                ),
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

'''),
            BuildText(theText: '''
    Berita
    
•	Dua bom atom atas Hiroshima (6 Agustus 1945) dan Nagasaki (9 Agustus 1945) memaksa Jepang mengaku kalah dan menyerah kepada sekutu. Itu yang dilakukan Kaisar Jepang Hirohito. Jenderal Hideki Tojo yang juga PM Jepang pada Perang Dunia II menolak menyerah dan memilih maju terus berperang. Bagi Tojo menyerah tidak ubahnya pengecut.
''')
          ],
        ),
      ),
    );
  }
}
