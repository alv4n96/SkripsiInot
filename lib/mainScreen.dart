import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi_toni/KIKD.dart';
import 'package:skripsi_toni/main.dart';
import 'package:skripsi_toni/instructionScreen.dart';
import 'package:skripsi_toni/widget.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("src/img/BAKGRUND.jpg"), fit: BoxFit.cover),
          ),
          height: screenHeight,
          width: screenWidht,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage(
                                  "src/img/mainScreen/header/logo.png")),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Image(
                            image:
                                AssetImage("src/img/landingPage/logo_UM.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: screenWidht / 1,
                    height: screenWidht * 9 / 20,
                    child: PageView(
                        controller: PageController(
                            viewportFraction: 0.8, initialPage: 1),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BannerWidgetArea(numberHeroes: 0),
                          BannerWidgetArea(numberHeroes: 1),
                          BannerWidgetArea(numberHeroes: 2),
                          BannerWidgetArea(numberHeroes: 3),
                          BannerWidgetArea(numberHeroes: 4),
                          BannerWidgetArea(numberHeroes: 5),
                        ]),
                  ),
                  MenuButton(
                    label: "PETUNJUK PENGGUNAAN",
                    screenWidth: screenWidht,
                    targetScene: InstructionPage(),
                  ),
                  MenuButton(
                    label: "KI/KD",
                    screenWidth: screenWidht,
                    targetScene: KIKDPage(),
                  ),
                  MenuButton(
                    label: "MATERI",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
                  ),
                  MenuButton(
                    label: "GALERI",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
                  ),
                  MenuButton(
                    label: "DAFTAR PUSTAKA",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

var bannerItems = [
  "Adolf Hitler",
  "Joseph Stallin",
  "Benito Mussolini",
  "Franklin Delano Roosevelt",
  "Winston Churchill",
  "Hideki Tojo",
];
// var subLabelItems = [" ", " ", " ", " "];
var bannerImages = [
  "src/img/mainScreen/bannerHero/1.jpg",
  "src/img/mainScreen/bannerHero/2.jpg",
  "src/img/mainScreen/bannerHero/3.jpg",
  "src/img/mainScreen/bannerHero/4.jpg",
  "src/img/mainScreen/bannerHero/5.jpg",
  "src/img/mainScreen/bannerHero/6.jpg",
];

class BannerWidgetArea extends StatelessWidget {
  final int numberHeroes;

  const BannerWidgetArea({
    Key key,
    @required this.numberHeroes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image.asset(
              bannerImages[this.numberHeroes],
              fit: BoxFit.contain,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.blue.shade900])),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  bannerItems[numberHeroes],
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
