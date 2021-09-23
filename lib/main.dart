import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

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
    {
      'questionText': 'Siapa depannya namanya Ipan?',
      'answers': ['Muhammad', 'Matovani', 'Ainur', 'Rahma']
    },
    {
      'questionText': 'Apa Warna kesukaan ku?',
      'answers': ['Merah', 'Biru', 'Hijau', 'Kuning']
    },
    {
      'questionText': 'Bulan apa aku lahir?',
      'answers': ['Maret', 'Mei', 'Oktober', 'September']
    },
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
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
