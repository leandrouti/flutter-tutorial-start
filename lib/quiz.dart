import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[this.questionIndex]['questionText'] as String),
        ...(questions[this.questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(this.answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
