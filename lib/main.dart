import 'package:flutter/material.dart';
import 'package:skripsi_toni/questions.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indexQuestion = 0;
  var questions = [
    'What\'s your Favorite XXXAA?',
    'What\'s your favorite AAXXAA?',
    'What\'s your favorite AASSAAX?',
  ];

  void answerQuestion() {
    setState(() {
      if (_indexQuestion < questions.length - 1) {
        print('Pertanyaan ke - ${_indexQuestion + 1}');
        _indexQuestion += 1;
      } else {
        print('Pertanyaan ke - ${_indexQuestion + 1} tidak ada');
        _indexQuestion = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing'),
        ),
        body: Column(
          children: [
            Questions(
              // questions.elementAt(0),
              questions[_indexQuestion],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Chossen Answer 2"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("Chossen Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
