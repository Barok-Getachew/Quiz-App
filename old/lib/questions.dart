import 'package:flutter/material.dart';

// ignore: camel_case_types
class question extends StatelessWidget {
  var QuestionText;
  question(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        QuestionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
