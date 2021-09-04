import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetIndex;

  Result(this.resetIndex, this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 2) {
      resultText = 'You area awsome and innocent';
    } else if (resultScore <= 3) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 4) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            this.resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: this.resetIndex,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
