import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class benitoMussolini extends StatelessWidget {
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
                                      "src/img/mainScreen/bannerHero/3.jpg"))),
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
                    '''Benito Mussolini''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                buildText(theText: '''

  Riwayat hidup

•	Benito Amilcare Andrea Mussolini lahir di kota Predappio tanggal 29 Juli 1883, Italia utara tengah. 

•	Negarawan Italia, setelah hidup beberapa lama di Swiss, ia kembali ke Italia dan menjadi editor surat kabar Avanti.

•	1910, Mussoilini menjadi sekretaris partai sosialis local di Forli

•	1911, Mussolini dipenjara karena memproduksi propaganda damai setelah Italia menyatakan perang terhadap Turki

•	Mussolini keluar dari partai sosialis, terpikat oleh militerisme

•	1919, mendirikan II Popolo d’Italia dan mengorganisir partai Fasis

•	1921, membentuk partai fasis nasional (Montefiore Dkk, 2007:206-207)

•	1922, Raja memintanya membentuk pemerintahan baru. Jadilah Italia dikelola pemerintahan fasis (Siboro. 2012:110-120)

•	1940, ikut Perang Dunia II berada di pihak Jerman

•	1942, pengikut Mussolini meninggalakannya dan menangkapnya. Namun diselamatkan komando Jerman

•	1945, ditangkap gerilyawan Italia di desa Como setelah dihadapkan pengadilan ia ditembak mati kemudia jenazahnya dibawa ke Milan dan digantung terbalik



Berita 

	Fasisme menjadi suatu gerakan politik ketika Mussolini membentuk kelompok untuk bertempur yang dikenal sebagai baju hitam, yakni kumpulan penjahat, kriminal, dan preman yang bertindak sebagai tukang pukul para cukong Raja Vittorio Emanuele III merasa ketakutan dengan gerakan yang dilakukan Mussolini beserta kelompoknya. Kemudian Mussolini diundang ke istana lalu di beri posisi sebagai pemimpin (Siboro, 2012:110-120).

	Fasisme yang merupakan ciptaan Mussolini berasal dari bahasa latin fasces, yang artinya kumpulan kayu-kayu yang dikaitkan pada sebuah kapak dan digunakan pada zaman Romawi kuno. Pejabat senior yang disebut “Lictor” membawa benda ini (kayu yang dikaitkan pada sebuah kapak) yang dipercaya sebagai simbol kekuatan dan kedaulatan (Harun Yahya, 2004:54).



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
