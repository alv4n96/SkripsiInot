import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<MyApp> {
  int indexQuestion = 0;
  var questions = [
    'What\'s your Favorite XXXAA?',
    'What\'s your favorite AAXXAA?',
    'What\'s your favorite AASSAAX?',
  ];

  void answerQuestion() {
    setState(() {
      if (indexQuestion < questions.length - 1) {
        print('pertanyaan ke - ${indexQuestion + 1}');
        indexQuestion += 1;
      } else {
        print('Pertanyaan ke - ${indexQuestion + 1} tidak ada');
        indexQuestion = 0;
      }
    });
    print(indexQuestion);
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
