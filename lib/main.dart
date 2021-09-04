import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favoirte animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
  ];

  void _buttonPressed() {
    print('button presseed');

    setState(() {
      this._questionIndex = this._questionIndex < (this.questions.length - 1)
          ? this._questionIndex + 1
          : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: Column(
          children: [
            Question(questions[this._questionIndex]['questionText'] as String),
            ...(questions[this._questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(this._buttonPressed, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
