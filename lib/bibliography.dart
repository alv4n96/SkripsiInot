import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

var DPItems = [
  '''Hermawan, Dkk. 2017. Sejarah XI Peminatan Ilmu-Ilmu Sosial. Jakarta: Yudhistira.''',
  '''Leucthenburg, William E. 1963. Franklin D. Roosevelt and the New Deal. New York:  Harper and Row.''',
  '''Masmedia Tim. 2013. Sejarah Sekolah Menengah Atas XI. Sidoarjo: Masmedia Buana Putaka. ''',
  '''Motefiore. 2007. Pidato-Pidato Yang Mengubah Dunia: Kisah dan Petikan Pidato-Pidato Bersejarah. Jakarta: Erlangga.''',
  '''O'Brien, Joseph V. "World War II: Combatants and Casualties (1937–1945)". Obee's ory Page. John Jay College of Criminal Justice. Diakses 20 Juni 2021.''',
  '''Pambudi, A. 2004. Kematian Adolf Hitler. Jakarta: Agromedia Pustaka.''',
  '''P2k Um Surabaya. 2009. Perang Dunia II. (http://p2k.um-surabaya.ac.id/id3/1-3045-2942/Perang-Dunia-Ii_14654_stieabi_p2k-um-surabaya.html), Diakses 20 Juli 2021.''',
  '''Ricklef.M.C. 2013. Sejarah Indonesia Modern 1200-2004. Jakarta: PT Serambi Ilmu Semesta.''',
  '''Siboro. 2012. Sejarah Australia: Dari terbentunya Commonwealth Of Australia sampai dengan terbentuknya kerja sama regional dengan negara-negara Asia dan Pasifik. Yogyakarta: Ombak.''',
  '''Siboro. 2012. Sejarah Eropa Dari Masa Menjelang Perang Dunia I Sampai Masa Antarbellum. Yogyakarta: Ombak.''',
  '''Yahya, H. 2004. Menyikap Tabir Fasisme: Ideologi Darwinisme yang Mengancam Dunia. Bandung: Dzikra.''',
];

class bibliography extends StatelessWidget {
  const bibliography({Key key}) : super(key: key);

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
                    '''Daftar Pustaka''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                ...DPItems.map((item) => BuildText(theText: item))
                // content
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
