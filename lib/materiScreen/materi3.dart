import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class materi3 extends StatelessWidget {
  const materi3({Key key}) : super(key: key);

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
                    '''DAMPAK PERANG DUNIA II''',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                buildText(theText: '''


Perang Dunia II merupakan perang terbesar dan terdahsyat yang pernah terjadi di dunia. Perang ini menelan korban sangat besar yaitu sekitar 40 juta orang. Perang Dunia II juga membawa akibat besar bagi dunia terutama terjadi perubahan-perubahan di bidang ekonomi, politik, dan sosial. Dampak Perang Dunia II dapat dilihat sebagai berikut:

a.	Bidang Politik

	Munculnya dua kekuatan besar dunia yaitu Amerika Serikat (ideologi demokrasi liberal) dan Uni Soviet (ideologi komunis). 

	Perang Dingin (Cold War). 

	Terbentuknya NATO (fakta pertahanan Amerika Serikat dengan negara-negara Eropa Barat) dan Pakta Warsawa (fakta pertahan Uni Soviet dengan negara-negara Eropa Timur).

	Munculnya negara-negara merdeka di Asia, seperti Indonesia, Filipina, India, Pakistan, dan Srilanka.


b.	Bidang Ekonomi

	Perekonomian dunia mengalami kekacauan.

	Amerika Serikat memberikan bantuan (kredit) bagi negara-negara Eropa yang hancur akibat PD II.

	Jerman dan Jepang muncul sebagai negara industri besar setelah mendapatkan bantuan dari AS. 


c.	Bidang Sosial

	Adanya perjanjian-perjanjian untuk mengakhiri Perang Dunia II.

	Munculnya keinginan dari sebagian negara di dunia untuk menciptakan perdamaian.

	Terbentuknya Perserikatan Bangsa Bangsa (PBB) pada tahun 1945.



Perang Dunia II juga berdampak terhadap kemanusiaan, baik korban di pihak Blok Sekutu maupun korban di pihak Blok Sentral. Perkiraan total korban perang bervariasi, karena banyak kematian yang tidak tercatat. Beberapa pihak memperkirakan kurang lebih 60 juta orang tewas dalam perang, termasuk 20 juta tentara dan 40 juta warga sipil.Banyak warga sipil tewas belakangan karena suatu wabah, kelaparan, pembantaian, pengeboman, dan genosida yang disengaja. Uni Soviet kehilangan kurang lebih 27 juta rakyatnya sepanjang perang, termasuk 8,7 juta personil militer dan 19 juta warga sipil. Korban jiwa militer terbesar merupakan etnis Rusia (5.756.000), diikuti etnis Ukraina (1,377,400). Jerman merasakan 5,3 juta kematian militer, biasanya di Front Timur dan sepanjang pertempuran terakhir di Jerman.

Dari total korban tewas pada Perang Dunia II, lebih kurang 85 persen (kebanyakan Soviet dan Cina) berada di pihak Sekutu dan 15 prosen sisanya di pihak Poros. Beberapa akbar kematian ini diakibatkan oleh kejahatan perang yang diperagakan pasukan Jerman dan Jepang di wilayah pendudukan. Lebih kurang 1 sampai 17 juta warga sipil tewas belakang suatu peristiwa kebijakan ideologi Nazi secara langsung maupun tidak langsung, termasuk genosida sistematis lebih kurang enam juta kaum Yahudi. Berikut tabel korban kematian akibat Perang Dunia II. 
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
