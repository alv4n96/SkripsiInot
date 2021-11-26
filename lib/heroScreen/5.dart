import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class winstonChurchill extends StatelessWidget {
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
                                      "src/img/mainScreen/bannerHero/5.jpg"))),
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
                    '''Winston Churchill''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                buildText(theText: '''

  Riwayat hidup

•	Nama lengkapnya Sir Winston Leonard Spencer Churcill, lahir pada tanggal 30 November 1874 yang merupakan negarawan, prajurit, penulis Inggris.

•	Winston Churcill merupakan anak seorang bangsawan bernama Lord Randolph Churcill yang merupakan seorang tokoh politik Inggris.

•	1895, menempuh pendidikan di Harrow dan Sandhurst, dinas militer di Cuba

•	1899, Churcill meninggalkan dinas militer dan memutuskan untuk meirntis karir di parlemen, ia menjadi kandidat bagi partai konservatif di Oldham, Inggris.

•	1908, menjadi Presiden “Dewan Perdagangan” (Board of Trade).

•	1910-1915, menjadi Menteri Angkatan Laut (First Lord of the Admiralty) yang dinamis.

•	1945, bersama dengan F.D. Roosevelt dan Stalin merupakan tokoh-tokoh yang terkuat di dunia, ia memimpin rakyat Inggris supaya bertabah hati selama peperangan dan mempertahankan negara mereka sampai keruntuhan Jerman.

•	Winston Churcill wafat pada 24 Januari 1965.




Berita

	Ketika Perang Dunia II pecah, Neville Chamberlain menunjuk Churchill sebagai panglima tertinggi Angkatan Laut Inggris. Pada Mei 1940, dengan kemampuan berpidatonya yang hebat, penuh semangat, dan sikap optimis yang berani di hadapan kekuatan perang Jerman, Churchill berhasil membangkitkan semangat rakyat Inggris selama masa-masa tersulit dalam Perang Dunia II, antara tahun 1940 sampai 1942. Bahkan, Churchill mampu membantu menyelamatkan Eropa dari dominasi Nazi yang totaliter dengan tindakan-tindakan beraninya. Selama masa perang itu, Churchill membangun hubungan yang erat dengan Presiden Amerika Serikat, Franklin D. Roosevelt. Ketika kedua pemimpin itu bertemu pada Agustus 1941, terbentuklah “Atlantic Charter”, yang berisi pernyataan mengenai prinsip demokratis yang berkaitan dengan hak, dan pemerintahan yang mandiri. Churchill dan Roosevelt bertanggung jawab atas perkembangan keseluruhan strategi untuk merebut Eropa dari pendudukan Jerman. Pada 1945, keduanya bertemu dengan pemimpin Uni Soviet, Joseph Stalin, pada konferensi Yalta untuk membuat rencana guna mengakhiri perlawanan Jerman, dan pengendalian pasca perang atas daerah-daerah bekas pendudukan.


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
