import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int indexQuestion = 0;
  void answerQuestion() {
    print('Answer Chossen!');
    indexQuestion = indexQuestion + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your Favorite Color?',
      'What\'s your favorite animal?',
      'What\'s your favorite Group Band?',
    ];

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing'),
        ),
        body: Column(
          children: [
            Text(
              // questions.elementAt(0),
              questions[indexQuestion],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Chossen Answer 2"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print("Chossen Answer 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
