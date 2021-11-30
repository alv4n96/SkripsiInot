import 'package:flutter/material.dart';
import 'package:skripsi_toni/widget.dart';

class adolfHitler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.blueAccent,
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
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 70),
                          width: 172,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                "src/img/mainScreen/bannerHero/1.jpg",
                              ))),
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
                    '''Adolf Hitler''',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Jaapokki'),
                  ),
                ),
                BuildText(theText: '''

  Riwayat Hidup:

•	Lahir, Braunau, Austria 20 April 1889

•	1909-1913, miskin dan berpindah-pindah pekerjaan

•	1914, pergi ke Bayern dan menjadi tentara (infanteri)

•	1921, ketua Partai Nasionalis-Sosialis (National Socialist German Workers Party atau Nationalsozialistische Deutsche Arbeiterpartei/NSDAP) yang dikenal dengan Nazi (Montefiore Dkk, 2007:214)

•	1923, ditangkap serta dipenjara selama sembilan bulan dan ia sempat menulis bukunya Mein Kampf (Perjuangan Saya)

•	1933, Hindenburg mengangkat Hitler sebagai kanselir

•	1934, pada kematian Hindenburg, Hitler diproklamasikan sebagai Fuhrer des Reiches

•	1938-1939, Hitler menaklukkan Austria, Cekoslavia, Polandia serta menandatangani pakta Molotov-Ribbentrop dengan Josef Stallin dictator Soviet. Deklarasi perang dari Britania Raya dan Prancis (Montefiore Dkk, 2007:216)

•	1941, Hitler telah berhasil menguasai benua Eropa, menggunakan serangan kilat dengan istilah blitzkrieg 

•	1942-1943, runtuhnya kekuasaan Hitler

•	1944, kepercayaan tentara pada Hitler hilang dan diadakan percobaan pembunuhan

•	1945, kematian Adolf Hitler didalam bunker beserta keluarganya, menteri luar negerinya Goebles, istri dan anak-anak mereka (Agustinus, 2004:90)





Berita

	Hitler menjadi dictator Jerman setelah Presiden Von Hindenburg meninggal. Hitler menyatukan jabatan kanselir dan presiden menjadi Führer sekaligus menjadikan Nazi sebagai partai tunggal di Jerman (Siboro,2012:127)

	Fasisme yang dicetus Hitler bertujuan untuk kejayaan Jerman setelah kekalahan di Perang Dunia I. Hitler menyalahkan kaum Yahudi yang menyebabkan Jerman kalah dalam perang, serta dianggapnya telah semena-mena memperlakukannya (Russel, 2005:50)

	Kebijakan dalam bidang ekonomi, yang dilakukan Hitler dikenal dengan rencana empat tahun (Four Year Plan) (Siboro, 2007:129)

	Penyerangan ke Stalingard meupakan awal kekalahan Jerman di bawah kepemimpinan Hitler, dikarenakan banyaknya pasukan Jerman yang mati sia-sia. 200 ribu serdadu bertempur di Stalingard adalah yang terbaik dari seluruh tentara Jerman. Perlahan tapi pasti Soviet mengalahkan kekaisaran Hitler seraya menuju Berlin (Montefiore Dkk, 2007:217)

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
