import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final List<Map> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers']).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
