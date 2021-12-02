import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class winstonChurchill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.indigo[900],
              title: Text(
                "Winston Churchill",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: ClipRRect(
                child: Image.asset(
                  "src/img/flag/5.jpg",
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
                  '''Winston Churchill''',
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

•	Nama lengkapnya Sir Winston Leonard Spencer Churcill, lahir pada tanggal 30 November 1874 yang merupakan negarawan, prajurit, penulis Inggris.

•	Winston Churcill merupakan anak seorang bangsawan bernama Lord Randolph Churcill yang merupakan seorang tokoh politik Inggris.

•	1895, menempuh pendidikan di Harrow dan Sandhurst, dinas militer di Cuba

•	1899, Churcill meninggalkan dinas militer dan memutuskan untuk meirntis karir di parlemen, ia menjadi kandidat bagi partai konservatif di Oldham, Inggris.

•	1908, menjadi Presiden “Dewan Perdagangan” (Board of Trade).

•	1910-1915, menjadi Menteri Angkatan Laut (First Lord of the Admiralty) yang dinamis.

•	1945, bersama dengan F.D. Roosevelt dan Stalin merupakan tokoh-tokoh yang terkuat di dunia, ia memimpin rakyat Inggris supaya bertabah hati selama peperangan dan mempertahankan negara mereka sampai keruntuhan Jerman.

•	Winston Churcill wafat pada 24 Januari 1965.

'''),
            BuildText(theText: '''
    Berita

•	Ketika Perang Dunia II pecah, Neville Chamberlain menunjuk Churchill sebagai panglima tertinggi Angkatan Laut Inggris. Pada Mei 1940, dengan kemampuan berpidatonya yang hebat, penuh semangat, dan sikap optimis yang berani di hadapan kekuatan perang Jerman, Churchill berhasil membangkitkan semangat rakyat Inggris selama masa-masa tersulit dalam Perang Dunia II, antara tahun 1940 sampai 1942. Bahkan, Churchill mampu membantu menyelamatkan Eropa dari dominasi Nazi yang totaliter dengan tindakan-tindakan beraninya. Selama masa perang itu, Churchill membangun hubungan yang erat dengan Presiden Amerika Serikat, Franklin D. Roosevelt. Ketika kedua pemimpin itu bertemu pada Agustus 1941, terbentuklah “Atlantic Charter”, yang berisi pernyataan mengenai prinsip demokratis yang berkaitan dengan hak, dan pemerintahan yang mandiri. Churchill dan Roosevelt bertanggung jawab atas perkembangan keseluruhan strategi untuk merebut Eropa dari pendudukan Jerman. Pada 1945, keduanya bertemu dengan pemimpin Uni Soviet, Joseph Stalin, pada konferensi Yalta untuk membuat rencana guna mengakhiri perlawanan Jerman, dan pengendalian pasca perang atas daerah-daerah bekas pendudukan.
''')
          ],
        ),
      ),
    );
  }
}
