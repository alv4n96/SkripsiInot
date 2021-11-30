import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({Key key}) : super(key: key);

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
                  padding: EdgeInsets.only(top: 25, left: 25, bottom: 20),
                  // TITLE
                  child: Text(
                    '''Petunjuk Penggunaan''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                BuildText(theText: '''
1. Aktifkan data seluler atau nyalakan wifi smartphone
                '''),
                BuildText(theText: '''
2. Pastikan jaringan terhubung
'''),
                BuildText(theText: '''
3. Pastikan smartphone memiliki ruang yang cukup
'''),
                BuildText(theText: '''
4. Install aplikasi.
'''),
                BuildText(theText: '''
5. Baca dengan teliti teks yang sudah disediakan
'''),
                BuildText(theText: '''
6. Pelajari apa yang telah termuat di aplikasi.
'''),
                BuildText(theText: '''


Selamat belajar 

Good Luck ❤
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
