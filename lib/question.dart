import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
