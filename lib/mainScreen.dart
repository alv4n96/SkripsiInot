import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
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
                  BannerWidgetArea(),
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
var bannerImages = [
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
  "src/img/mainScreen/bannerHero/AbdulMuis.jpg",
];

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    // List<Widget> banners = <Widget>[];

    // ignore: deprecated_member_use
    List<Widget> banners = new List<Widget>();

    PageController controller = PageController(initialPage: 1);

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ]),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                bannerImages[x],
                fit: BoxFit.contain,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.orangeAccent])),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
        ),
      );
      banners.add(bannerView);
    }
    return Container(
      width: screenWidht,
      height: screenWidht * 9 / 20,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
