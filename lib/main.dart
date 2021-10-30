import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("src/img/background.png"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Atas
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 50, right: 25),
                      child: Container(
                        width: 100,
                        height: 100,
                        // color: Colors.blueAccent,
                        child: Image(
                          image: AssetImage("src/img/landingPage/logo_UM.png"),
                        ),
                      )),
                ],
              ),
              // Tengah
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("src/img/landingPage/wallpaper.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "PERANG DUNIA II",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: 'Stick',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // Bawah
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 70),
                      child: SizedBox(
                        width: 250,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            return "Test";
                          },
                          child: Text(
                            "BUKA",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4,
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
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
