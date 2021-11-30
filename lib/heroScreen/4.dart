import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class franklinDelanoRoosevelt extends StatelessWidget {
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
                                      "src/img/mainScreen/bannerHero/4.jpg"))),
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
                    '''Franklin Delano Roosevelt''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                BuildText(theText: '''


  Riwayat hidup

•	Lahir 30 Januari 1882 di Hudson Valley di Hyde Park, New York. Lahir dari keluarga berada membuat Roosevelt bias belajar apapun, antara lain menembak, golf, dan berlayar.

•	Franklin Delano Roosevelt adalah satu-satunya Presiden Amerika yang terpilih selama empat kali berturut-turut dalam masa jabatan dari tahun 1933 sampai 1945.

•	1911, menjadi senator New York.

•	1913, dilantik menjadi asisten sekretaris angkatan laut AS.

•	1933, dilantik menjadi presiden.

•	1937, menjabat presiden untuk yang kedua kalinya.

•	1941, Roosevelt memerintahkan penghentian penjualan minyak ke Jepang. Karena Jepang menduduki Indochina.

•	1945, Roosevelt meninggal dan tak terlihat kemenangan resmi AS di Perang Dunia II.



Berita

Ketika Franklin Dealno Roosevelt dilantik menjadi Presiden, Amerika sedang mengalami suatu kondisi yang sangat memprihatinkan yang dikenal dengan The Greatest Depression. Lebih dari 13 juta rakyat Amerika tidak mempunyai pekerjaan yang diperparah dengan krisis ekonomi, susunan perbankan yang tidak menentu selain itu nilai mata uang turun drastis. Namun, berkat kehebatan dan kecerdasannya masa depresi yang dialami oleh Amerika dapat dilalui dengan tindakan tegas yang ditempuhnya yaitu dibentuklah suatu reformasi  yang dikenal dengan sebutan New Deal. Salah satupernyataannya yang terkenalpadaamanatpelantikannya adalah “ Satu-satunya yang haruskitatakutiadalah rasa takutitusendiri. “Dalamseratushari pertama, mengusulkanrencanabesar-besaranuntuk:

1. Menghidupkankembalikegiatanperusahaandanpertanian.

2. Memberi bantuan kepada para pengangguran dan kepada mereka yang terancam akan kehilangan ladang dan tempat tinggalnya.

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
