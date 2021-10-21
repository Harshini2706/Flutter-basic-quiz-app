import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/result.dart';
import './quiz.dart';


void main() {
  runApp(New());
}

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();

}

class _NewState extends State<New> {
  var _QuestionsIndex = 0;
  static const Questions = const [
    {
      'QuestionText': 'What\'s your favourite food?',
      'Answers': [
        {'text': 'Pasta', 'code': 001},
        {'text': 'Biryani', 'code': 002},
        {'text': 'soup', 'code': 003},
        {'text': 'Naan', 'score': 004}
      ]
    },
    {
      'QuestionText': 'Select your city for delivery',
      'Answers': [
        {'text': 'Crosscut', 'code': 010},
        {'text': 'RS puram', 'code': 020},
        { 'text': 'Ganapathy', 'code': 030},
        {'text': 'Sai baba colony', 'code': 040}
      ]
    },
    {
      'QuestionText': 'Provide the review for delivered food',
      'Answers': [
        {'text': 'good', 'code': 100},
        {'text': 'better', 'code': 200},
        {'text': 'best', 'code': 300},
        {'text': 'bad', 'code': 400}
      ]
    }
  ];
var _totalCode=0;

  void _show(int code,String text) {
    _totalCode+=code;
    setState(() {
      _QuestionsIndex = _QuestionsIndex + 1;
    });
    print(_totalCode);
    print(_QuestionsIndex);
    print(text);

    if (_QuestionsIndex < Questions.length) {
      print("Continue to the next...");
    } else {
      print("Hurrah!! we received your order,Get ready to enjoy foooood!");
    }
  }
void _restartQuiz(){
    setState(() {
    _QuestionsIndex=0;
    _totalCode=0;
    });
}
  @override
  Widget build(BuildContext context) {
    SizedBox(
      height: 60,
    );
    return MaterialApp(
      home: Scaffold(

          appBar: AppBar(
            title: Text("suvai Restaurant"),
            backgroundColor: Colors.greenAccent,

          ),
          backgroundColor: Colors.white10,
          body: _QuestionsIndex < Questions.length ? Quiz(show: _show,
              questions: Questions,
              QuestionsIndex: _QuestionsIndex)
              : Result(_totalCode,_restartQuiz)
      ),
    );
  }
}
