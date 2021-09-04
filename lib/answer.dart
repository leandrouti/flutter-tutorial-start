import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final void Function() _pressHandler;
  final VoidCallback _pressHandler;
  final String _text;

  Answer(this._pressHandler, this._text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this._pressHandler,
      child: Text(this._text),
    );
  }
}
