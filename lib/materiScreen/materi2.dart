import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class materi2 extends StatelessWidget {
  const materi2({Key key}) : super(key: key);

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
                    '''KRONOLOGI DAN JALANNYA PERANG DUNIA II''',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                buildText(theText: '''


Perang Dunia II dapat dikatakan merupakan balas dendam bagi negara-negara yang kalah dalam PD I.  Negara-negara yang terlibat terbagi dalam blok sentral dan blok sekutu. Berikut ini negara-negara yang terlibat dalam PD II. 
1.	Blok sentral yaitu Jerman, Italia, Jepang, Austria, Rumania, dan Finlandia.
2.	Blok sekutu yaitu Inggris, Prancis, Rusia, RRC, Amerika Serikat, Austria, dan Polandia. 

Secara umum Perang Dunia II terbagi dalam 3 tahapan sebagai berikut.
1.	Tahapan pertama, blok sentral melakukan ofensif dengan taktik serangan kilat.
2.	Tahapan ke dua, merupakan titik balik. Blok sentral bersifat defensif (bertahan) sedangkan blok sekutu lebih banyak melakukan serangan.
3.	Tahapan ke tiga, blok sekutu mulai mencapai kemenangan. 


Medan pertempuran PD II lebih luas yaitu mencangkup Eropa, Asia, dan Afrika. PD II juga meluas ke wilayah Afrika, dalam arti untuk perebutan tanah jajahan bangsa Barat di benua Afrika.

Setelah Jerman melancarkan serangan ke Polandia pada 1 September 1939, tiga hari kemudian yaitu pada 3 September 1939 Prancis dan Inggris menyatakan perang terhadap Jerman. Dimulailah PD II antara Blok Poros yang dipimpin Jerman dengan Blok Sekutu yang dipimpin Inggris dengan politik lebensraum, pada 9 April 1940 tentara Jerman dalam waktu singkat melakukan serangan secara besar-besaran ke wilayah utara dan berhasil menduduki Denmark dan Norwegia. 

Pada tanggal 10 Juni 1940, italia terjun ke kancah peperangan dengan memihak Jerman. Akhirnya dengan gempuran-gempuran yang sangat dahsyat dari Jerman dan Italia selama 12 hari, Prancis dapat ditaklukan pada tanggal 22 Juni 1940. Selanjutnya Jerman mencoba untuk menguasai Inggris. Namun serangan Jerman, baik angkatan udara maupun darat dapat dipatahkan oleh pasukan Inggris dibawah pimpinan Perdana Menteri Winston Churchill.

Pada tanggal 22 Juni 1940, Jerman mulai serangan kea rah timur, yaitu Rusia. Serangan-serangan tersebut berhasil sehingga negara-negara sekutu dalam posisi bertahan. Namun, pasukan Rusia dapat memukul mundur pasukan Jerman dengan menerobos jauh kea rah Polandia, Rumania, Yugoslavia, Hongaria sehingga dapat mengusir pasukan Jerman dari daerah Balkan.

Di Pasifik, Jepang telah memulai Perang Asia Timur Raya dengan melakukan pengeboman terhadap pangkalan militer AS di Pearl Harbour, Hawai pada tanggal 7 Desember 1941. Keesokan harinya, AS menyatakan perang dengan Jepang. Dalam waktu 100 hari, Jepang berhasil merebut koloni Inggris di Malaya dan Burma, koloni Amerika di Filipina, koloni Belanda di Indonesia, dan sejumlah pulau di Pasifik.  Untuk membalas serangan Jepang, sekutu menyusun strategi dengan melakukan taktik “Loncat Katak”. Strategi ini dipimpin oleh Jenderal Douglas Mac Arthur dan Laksamana Chester Nimittz. 

Pada 7 Mei 1942, sekutu berhasil menghancurkan tentara Jepang di Laut Karang dekat Papua. Setelah itu, pada 1945 sekutu berhasil merebut Filipina dan Indo-Cina. Tentara Jepang akhirnya menyerah apada sekutu pada 15 Agustus 1945 setelah sebelumnya Hiroshima dan Nagasaki dibom atom pada 6 dan 9 Agustus 1945. 

Sebelumnya, pasukan sekutu di bawah pimpinan Montgomery pada 23 Oktober 1942 mendapat kemenangan dalam Perang El-Alamein di Afrika Utara. Adapun di Italia serangan Sekutu mendapat perlawanan sengitdari pasukan Jerman. Namun pada 3 September 1943 Italia akhirnya dapat ditaklukkan. Pada tanggal 6 Juni 1944, Jenderal Eisenhower memimpin pasukan sekutu untuk menyerang Jerman yang menguasai Prancis di Norwegia, Normandia, dan Prancis Selatan. Serangan-serangan itu berhasil dilancarkan dengan direbutnya Prancis pada 24 September 1944. Pada awal 1945, pasukan sekutu melancarkan serangan langsung ke wilayah Jerman dengan menghancurkan pusat-pusat industri Jerman dan berhasil menduduki Kota Berlin. Pada 7 Mei 1945, Jerman akhirnya menyerah pada sekutu. 


Dengan menyerahnya Jerman dan Jepang kepada sekutu, berakhirlah Perang Dunia II. Kekalahan yang dialami pada Perang Dunia I terulang kembali oleh Jerman dan Italia. Akhir dari Perang Dunia II ialah dengan penandatanganan Perjanjian Potsdam antara Jerman dan Sekutu. Pihak yang kalah perang diharuskan ganti rugi perang, pembagian wilayah, dan pembagian daerah-daerah yang direbut pada masa perang.Selain itu, mereka yang bertindak sebagai otak Perang Dunia II dinyatakan sebagai penjahat perang dan diadili di depan Mahkamah Internasional.



Kronologi Perang Dunia II di Front Pasifik 

-	Jepang menyerang  Pearl Harbour (7 Desember 1941)
-	Amerika Serikat mengumumkan perang terhadap Jepang (8 Desember 1941)
-	Bom atom dijatuhkan di Nagasaki Jepang (9 Agustus 1945)
-	Jepang menyerah di Kapal Missouri AS (2 September 1945)

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
