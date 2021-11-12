import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi_toni/main.dart';

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
                    width: screenWidht / .5,
                    height: screenWidht * 9 / 20,
                    child: PageView(
                        controller: PageController(
                            viewportFraction: 0.8, initialPage: 1),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BannerWidgetArea(numberHeroes: 1),
                          BannerWidgetArea(numberHeroes: 2),
                          BannerWidgetArea(numberHeroes: 0),
                        ]),
                  ),
                  MenuButton(
                    label: "PETUNJUK PENGGUNAAN",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
                  ),
                  MenuButton(
                    label: "KI/KD",
                    screenWidth: screenWidht,
                    targetScene: MyApp(),
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

var bannerItems = ["Abdul Muis", "Abdul Muis", "Abdul Muis", "Abdul Muis"];
var subLabelItems = [
  "Pahlawan Nasional",
  "Pahlawan Indonesia",
  "Pahlawan Internasional",
  "Pahlawan Aja"
];
var bannerImages = [
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
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
                Text(
                  subLabelItems[this.numberHeroes],
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final double screenWidth;
  final String label;
  final Widget targetScene;

  const MenuButton({
    Key key,
    @required this.screenWidth,
    @required this.label,
    @required this.targetScene,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: SizedBox(
        width: this.screenWidth,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            //right way: use context in below level tree with MaterialApp
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => this.targetScene));
          },
          child: Text(
            this.label,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jaapokki',
              letterSpacing: 5,
              color: Colors.lightBlue.shade900,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade400,
              side: BorderSide(
                width: 3,
                color: Colors.blue.shade900,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}
