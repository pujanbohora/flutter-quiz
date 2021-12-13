import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 0}
      ],
    },
    {
      'questionText': 'what\'s your favourite animals?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'panda', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Tiger', 'score': 6}
      ],
    },
    {
      'questionText': 'what\'s your favourite instructor?',
      'answers': [
        {'text': 'max', 'score': 4},
        {'text': 'max', 'score': 3},
        {'text': 'max', 'score': 7},
        {'text': 'max', 'score': 10}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestions(int score) {

    _totalScore +=score;


    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // ignore: avoid_print
    // print('Answer chosen!');
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions) //if
            : Result(_totalScore), //else
      ),
    );
  }
}
