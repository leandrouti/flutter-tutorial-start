import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _text;

  Question(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(this._text),
      ),
    );
  }
}
