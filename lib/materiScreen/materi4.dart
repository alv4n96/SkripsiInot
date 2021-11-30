import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class materi4 extends StatelessWidget {
  const materi4({Key key}) : super(key: key);

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
                    '''LAHIRNYA PERSERIKATAN BANGSA BANGSA (PBB)
                    ''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                PictBuilder(
                    image: "src/img/materi/4_1.jpg",
                    label: "Logo Perserikatan Bangsa Bangsa"),
                BuildText(
                    theText:
                        '''Pecahnya Perang Dunia tidak terlepas dari kegagalan LBB sebagai lembaga perdamaian dunia dalam menjalankan tugasnya. Sifat sukarela dan superioritas-inferioritas Negara-negara anggotanya adalah penyebab dari kegagalan tersebut. Akibat hal tersebut, pecahnya perang yang lebih besar dari Perang Dunia I tidak dapat dihindarkan. Kesengsaraan akibat Perang Dunia II menyadarkan umat manusia terhadap pentingnya upaya perdamaian dunia.'''),
                BuildText(
                    theText:
                        '''Pasca Perang Dunia II tokoh-tokoh dunia seperti Presiden F.D. Roosevelt (AS) dan Perdana Menteri Winston Churchill (Inggris) merintis kembali pendirian organisasi internasional untuk menjaga perdamaian dunia. Pada tanggal 24 Oktober 1945 dibentuk Perserikatan Bangsa-Bangsa yang sampai saat ini berperan aktif dalam memelihara serta meningkatkan perdamaian, keamanan dunia, dan memajukan kesejahteraan bangsa-bangsa dunia. Kemudian pada tanggal 14 Agustus 1941 Presiden F.D. Roosevelt (AS) dan Perdana Menteri Winston Churchill (Inggris) menandatangani piagam perdamaian yang disebut Piagam Atlantik (Atlantic Charter) di atas geladak kapal agusta di Teluk New Foundland. Adapun isi dari Piagam Atlantik,
di antaranya sebagai berikut :'''),
                BuildText(
                    theText:
                        '''a.	Tidak boleh ada perluasan daerah jika tidak dibarengi dengan kemauan penduduk asli.
b.	Setiap bangsa berhak menentukan bentuk dan corak negaranya sendiri. 
c.	Setiap negara diperkenankan ikut serta dalam perdagangan internasional.
d.	Membentuk perdamaian dunia agar semua bangsa dapat hidup bebas dari rasa takut dan kekurangan.
e.	Menolak jalan kekerasan dalam menyelesaikan pertikaian internasional, kecuali untuk kepentingan umum. 
'''),
                PictBuilder(
                    image: "src/img/materi/4_2.jpg", label: '''Piagam Atlantik
Sumber: id.quora.com
'''),
                BuildText(
                    theText:
                        '''Dalam pertemuan di Washington pada tanggal 1 januari 1942, 26 negara yang hadir menyetujui program dan tujuan yang terdapat dalam Piagam Atlantik. Ke 26 negara menandatangani Declaration of The United Nations.  '''),
                BuildText(
                    theText:
                        '''Sekalipun telah menyepakati kesepakatan untuk memulai pelaksanaan cita-cita dunia yang damai, namun dasar organisasi yang dibayangkan belum ada ketegasan. Hal itu baru dapat dicapai di Moskow setelah diadakan musyawarah antar menteri luar negeri dari beberapa negara. Di antaranya Menteri Luar Negri Uni Soviet (V. Molotov), Amerika Serikat (Cordell Hull), Inggris (Anthony Eden), dan Tiongkok (Foo Ping-Chen). Pertemuan tersebut menghasilkan Maklumat Moskow. Ke empat negara mengakui perlunya perdamaian dan keamanan internasional. Oleh karena itu, ke empat negara tersebut menyepakati untuk sesegera mungkin didirikan organisasi Internasional yang berdasarkan persamaan kedaulatan negara yang menginginkan perdamaian dan terbuka bagi tiap-tiap negara besar maupun kecil. '''),
                BuildText(
                    theText:
                        '''Pada tanggal 7 oktober 1944 wakil-wakil negara yang menandatangani Maklumat Moskow bertemu kembali di Dumbarton Oaks, Washington DC. Dalam pertemuan itu, para delegasi menyetujui dibentuknya Dewan Keamanan sebagai badan kelengkapan yang paling terkemuka di dalam usaha menegakkan perdamaian. Walaupun telah disepakati lahirnya Dewan Keamanan, namun ke empat negara yang menandatangani Maklumat Moskow belum menyepakati nilai suara dalam setiap pengambilan keputusan. Oleh karena itu, 3 di antara 4 negara yaitu AS, Uni Soviet, dan Inggris melakukan perundingan di Yalta Semenanjung Krim pada 4 Ferbruari 1945. Dalam pertemuan tersebut hadir Rooselvelt, Stalin, dan Churchill. Ke tiga negara menyetujui bahwa untuk mencapai putusan yang sah, maka Dewan Keamanan harus mendapat minimal 7 suara dari 11 suara termasuk di dalamnya suara 5 besar anggota tetap Dewan Keamanan. '''),
                BuildText(
                    theText:
                        '''Pada 25 April 1945, semua negara yang terlibat dalam rintisan pembentukan organisasi perdamaian dunia dan negara-negara yang berperang melawan fasis bertemu di San Fransisco. Maksud pertemuan tersebut adalah menyusun piagam perhimpunan bangsa-bangsa (United Nations Charter). Pada 26 Juni 1945, piagam PBB ditandatangani oleh 50 negara. Negara penandatangan tersebut selanjutnya disebut anggota asli PBB, piagam perhimpunan bangsa-bangsa baru diresmikan dan mulai berlaku 24 Oktober 1945. Tanggal peresmian piagam sekaligus dipandang dan dirayakan sebagai hari jadi PBB.  ''')
                // content
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
