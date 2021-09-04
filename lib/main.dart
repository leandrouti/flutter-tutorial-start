import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ],
    },
  ];

  void _buttonPressed(int score) {
    this._totalScore += score;
    print(this._totalScore);
    print('button presseed');

    setState(() {
      this._questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: this._questionIndex < _questions.length
            ? Quiz(
                answerQuestion: this._buttonPressed,
                questionIndex: this._questionIndex,
                questions: this._questions,
              )
            : Result(this._resetQuiz, this._totalScore),
      ),
    );
  }
}
