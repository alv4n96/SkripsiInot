import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  child: FlutterLogo(),
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Data 1'),
                      Text('Data 2'),
                      Text('Data 3'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
