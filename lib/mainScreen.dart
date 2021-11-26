import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi_toni/KIKD.dart';
import 'package:skripsi_toni/bibliography.dart';
import 'package:skripsi_toni/heroScreen/2.dart';
import 'package:skripsi_toni/heroScreen/3.dart';
import 'package:skripsi_toni/heroScreen/4.dart';
import 'package:skripsi_toni/heroScreen/5.dart';
import 'package:skripsi_toni/heroScreen/6.dart';
import 'package:skripsi_toni/main.dart';
import 'package:skripsi_toni/instructionScreen.dart';
import 'package:skripsi_toni/materiScreen.dart';
import 'package:skripsi_toni/widget.dart';
import 'package:skripsi_toni/heroScreen/1.dart';

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
                          BannerWidgetArea(
                            numberHeroes: 0,
                            targetScreen: adolfHitler(),
                          ),
                          BannerWidgetArea(
                            numberHeroes: 1,
                            targetScreen: josephStallin(),
                          ),
                          BannerWidgetArea(
                            numberHeroes: 2,
                            targetScreen: benitoMussolini(),
                          ),
                          BannerWidgetArea(
                            numberHeroes: 3,
                            targetScreen: franklinDelanoRoosevelt(),
                          ),
                          BannerWidgetArea(
                            numberHeroes: 4,
                            targetScreen: winstonChurchill(),
                          ),
                          BannerWidgetArea(
                            numberHeroes: 5,
                            targetScreen: hidekiTojo(),
                          ),
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
                    targetScene: KIKDApp(),
                  ),
                  MenuButton(
                    label: "MATERI",
                    screenWidth: screenWidht,
                    targetScene: materiScreen(),
                  ),
                  MenuButton(
                    label: "GALERI",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
                  ),
                  MenuButton(
                    label: "DAFTAR PUSTAKA",
                    screenWidth: screenWidht,
                    targetScene: bibliography(),
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
  final Widget targetScreen;

  const BannerWidgetArea({
    Key key,
    @required this.numberHeroes,
    @required this.targetScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            //right way: use context in below level tree with MaterialApp
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => this.targetScreen));
          },
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
        ));
  }
}
