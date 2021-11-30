import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class josephStallin extends StatelessWidget {
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
                                      "src/img/mainScreen/bannerHero/2.jpg"))),
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
                    '''Joseph Stallin''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
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



Berita

	Stalin adalah diktator yang mengalahkan Hitler dalam Perang Dunia II. Stalin mengembangkan kekaisaran Rusia secara maksimal, menjadikan Uni Soviet sebagai industry, dan menjadikannya adi kuasa nuklir (Montefiore Dkk, 2007:200).

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
