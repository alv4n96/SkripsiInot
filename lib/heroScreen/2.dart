import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class josephStallin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.redAccent[700],
              title: Text(
                "Joseph Stallin",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: ClipRRect(
                child: Image.asset(
                  "src/img/flag/2.jpg",
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
                  '''Joseph Stallin''',
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

•	Pemimpin Uni Soviet dengan nama asli Joseph Visarionovich Dzugashvili dan seorang diktator yang sangat lalim, dikenal juga dengan sebutan “Manusia Baja” sebagai namanya (Stallin atau Steel Man).

•	Lahir di Gori kota kecil di Georgia, pada tahun 1878, anak tukang sepatu dan mula-mula mendapat pendidikan pada sebuah seminari.

•	1898, ia terjun dalam gerakan revolusioner dan beberapa kali diasingkan di Siberia.

•	1917, menjadi redaktur Provada.

•	1922, diangkat sekretaris Jenderal Partai oleh Lenin.

•	1928, Stalin mulai melaksanakan rangkaian rencana 5 tahun Uni Soviet dan menyertakan kolektivisasi pertanian.

•	1934, Stalin memegang kekuasaan negara sepenuhnya, setelah menyingkirkan musuh-musuh politiknya.

•	1939, berhadapan dengan kebangkitan Nazi dan menandatangani pakta Non-agresi dengan Hitler.

•	1941, Uni Soviet diserang pasukan Hitler, pasukan Stalin dipaksa mundur.

•	1942, pasukan Stalin dapat mengalahkan pasukan Hitler di Stalingard.

•	1945, ketika pasukan Stalin dapat menguasai Berlin di Jerman, titik balik dalam perang melawan Hitler.

•	Joseph Stalin wafat pada tanggal 5 Maret 1953 di Moskow, Rusia.
'''),
            BuildText(theText: '''
    Berita
    
•	Stalin adalah diktator yang mengalahkan Hitler dalam Perang Dunia II. Stalin mengembangkan kekaisaran Rusia secara maksimal, menjadikan Uni Soviet sebagai industry, dan menjadikannya adi kuasa nuklir (Montefiore Dkk, 2007:200).
''')
          ],
        ),
      ),
    );
  }
}
