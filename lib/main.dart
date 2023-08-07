import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 6},
        {'text': 'Red', 'score': 4},
        {'text': 'White', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 5},
        {'text': 'elephant', 'score': 4},
        {'text': 'hyena', 'score': 3},
        {'text': 'lion', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {
          'text': 'Max',
          'score': 5,
        },
        {'text': 'Biruk', 'score': 4},
        {'text': 'Sisay', 'score': 3},
        {'text': 'roble', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore = _totalScore + score;

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(195, 224, 224, 224),
          appBar: AppBar(
            backgroundColor: Colors.tealAccent,
            title: Text(
              'My First App',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : result(_totalScore, _resetQuiz)),
    );
  }
}
