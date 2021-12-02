import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class benitoMussolini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.red[600],
              title: Text(
                "Benito Mussolini",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: ClipRRect(
                child: Image.asset(
                  "src/img/flag/3.jpg",
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
                  '''Benito Mussolini''',
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
'''),
            BuildText(theText: '''
    Berita 

•	Fasisme menjadi suatu gerakan politik ketika Mussolini membentuk kelompok untuk bertempur yang dikenal sebagai baju hitam, yakni kumpulan penjahat, kriminal, dan preman yang bertindak sebagai tukang pukul para cukong Raja Vittorio Emanuele III merasa ketakutan dengan gerakan yang dilakukan Mussolini beserta kelompoknya. Kemudian Mussolini diundang ke istana lalu di beri posisi sebagai pemimpin (Siboro, 2012:110-120).

•	Fasisme yang merupakan ciptaan Mussolini berasal dari bahasa latin fasces, yang artinya kumpulan kayu-kayu yang dikaitkan pada sebuah kapak dan digunakan pada zaman Romawi kuno. Pejabat senior yang disebut “Lictor” membawa benda ini (kayu yang dikaitkan pada sebuah kapak) yang dipercaya sebagai simbol kekuatan dan kedaulatan (Harun Yahya, 2004:54).
''')
          ],
        ),
      ),
    );
  }
}
