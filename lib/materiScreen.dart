import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi_toni/KIKD.dart';
import 'package:skripsi_toni/main.dart';
import 'package:skripsi_toni/instructionScreen.dart';
import 'package:skripsi_toni/mainScreen.dart';
import 'package:skripsi_toni/materiScreen/materi2.dart';
import 'package:skripsi_toni/widget.dart';
import 'package:skripsi_toni/materiScreen/materi1.dart';
import 'package:skripsi_toni/materiScreen/materi3.dart';
import 'package:skripsi_toni/materiScreen/materi4.dart';

class materiScreen extends StatelessWidget {
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: AppBar(
                      leading: new IconButton(
                        icon:
                            new Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      centerTitle: true,
                      backgroundColor: Colors.blue.shade900,
                      title: Text(
                        "Materi",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jaapokki',
                            letterSpacing: 5,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  MateriButton(
                    label: "LATAR BELAKANG PERANG DUNIA II",
                    screenWidth: screenWidht,
                    targetScene: materi1(),
                  ),
                  MateriButton(
                    label: "KRONOLOGI DAN JALANNYA PERANG DUNIA II",
                    screenWidth: screenWidht,
                    targetScene: materi2(),
                  ),
                  MateriButton(
                    label: "DAMPAK PERANG DUNIA II ",
                    screenWidth: screenWidht,
                    targetScene: materi3(),
                  ),
                  MateriButton(
                    label: "LAHIRNYA PERSERIKATAN BANGSA BANGSA (PBB)",
                    screenWidth: screenWidht,
                    targetScene: materi4(),
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
