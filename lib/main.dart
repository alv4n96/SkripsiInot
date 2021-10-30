import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Atas
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, right: 25),
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 20 + double.parse(counter.toString()),
                      ),
                    ),
                  ),
                ],
              ),
              // Tengah
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        if (counter != 1) {
                          counter--;
                        }
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        counter = 1;
                      });
                    },
                    child: Icon(Icons.refresh),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        if (counter < 211) {
                          counter++;
                        }
                      });
                    },
                    child: Icon(Icons.add),
                  )
                ],
              ),
              // Bawah
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text('I gotta pee')),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
