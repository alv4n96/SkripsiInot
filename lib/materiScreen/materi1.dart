import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class materi1 extends StatelessWidget {
  const materi1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.blue,
                expandedHeight: MediaQuery.of(context).size.height * 0.1,
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
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue.shade300),
                        ),
                      ),
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
                    '''LATAR BELAKANG PERANG DUNIA II''',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                buildText(theText: '''



Keadaan damai di Benua Eropa pasca Perang Dunia I berlangsung tidak lebih dari 15 tahun. Pada periode 1930-an keadaan politik dunia kembali memanas menyerupai kondisi politik pada 1900-1912, sebelum meletusnya PD I. Negara-negara yang pernah terlibat dalam PD I segera mempersiapkan diri untuk menghadapi perang yang mungkin terjadi. Latar belakang PD II sama dengan PD I, yaitu terbagi atas sebab umum dan sebab khusus. Hal-hal yang melatarbelakangi terjadinya PD II dapat digolongkan sebagai berikut:



a.	Sebab Umum

Sebab-sebab umum terjadinya Perang Dunia II antara lain.

1.	Pertentangan antara paham liberalisme dan totaliterisme. Liberalisme memberikan kebebasan bagi warga negaranya sedangkan totaliterisme mengekang kebebasan warga negara.
2.	Persekutuan mencari kawan.
3.	Semangat untuk membalas dendam karena kekalahan dalam PD I.
4.	Perlombaan senjata antar negara.
5.	Pertentangan antar negara imperialis untuk memperebutkan daerah jajahan.
6.	Kegagalan Liga Bangsa-Bangsa dalam mewujudkan perdamaian dunia.


b.	Sebab Khusus

Sebab khusus Perang Dunia II terjadi di dua kawasan yaitu kawasan Eropa dan kawasan Asia Pasifik. Berikut ini sebab-sebab khusus terjadinya PD II.

1.	Di kawasan Asia Pasifik, penyerbuan Jepang terhadap pangkalan Angkatan Laut Amerika Serikat di Pearl Harbour tanggal 7 Desember 1941.
2.	Di kawasan Eropa, serangan kilat yang dilakukan yang dilakukan Jerman atas Polandia pada tanggal 1 September 1939. Alasan penyerangan itu untuk merebut kembali kota Danziq. Dalam waktu singkat sebagian besar Polandia dikuasai Jerman. Uni Soviet yang merasa keamanannya terancam, segera menyerbu Polandia dari arah Timur. Pada tanggal 3 September 1939 Inggris dan Prancis menyatakan perang terhadap Jerman. 


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
