import 'package:deneme/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

  class _MyAppState extends State<MyApp>{

   final  _questions = const [
      {
        'questionText':'What\'s your favorite color',
        'answers':[
          {'text':'Black','score': 10},
          {'text':'Red','score': 5},
          {'text':'Green','score': 10},
          {'text':'White','score': 0}],
      },
      {
        'questionText':'What\'s your favorite animal',
        'answers':[
          {'text':'Lion','score': 5},
          {'text':'Snake','score': 0},
          {'text':'Cat','score': 10},
          {'text':'Dog','score': 6}],
      },
      {
        'questionText':'What\'s your favorite Singer',
        'answers':[
          {'text':'Manga','score': 5},
          {'text':'DKTT','score': 10},
          {'text':'Mor ve ötesi','score': 10},],
      }
    ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score)
  {

    _totalScore = _totalScore + score;

    setState((){
      _questionIndex = _questionIndex +1;
    });
    print(_questionIndex);

    print(_totalScore);

    if(_questionIndex < _questions.length)
      {
      print("we have more questions !!");
      }
    else{
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
     body: _questionIndex < _questions.length
         ? Quiz(
       answerQuestion: _answerQuestion ,
       questionIndex: _questionIndex,
       questions: _questions,)
         : Result(_totalScore),
   ),);
  }
}