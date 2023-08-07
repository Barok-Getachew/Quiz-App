import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.brown)),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
