import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionsIndex = 0;

  void _questionss() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'QUESTION': 'What is your favourite colors',
        'Answer': ['black', 'red', 'call']
      },
      {
        'QUESTION': 'What is your favourite Aniumal',
        'Answer': ['bird', 'rat', 'rabit']
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: (_questionsIndex < questions.length)
          ? Quiz(
              questions: questions,
              answerQuestion: _questionss,
              questionIndex: _questionsIndex)
          : const Center(child: Text('done')),
    ));
  }
}
