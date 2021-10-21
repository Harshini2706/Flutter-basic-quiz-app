import 'package:flutter/material.dart';
import 'package:untitled/question.dart';
import './answer..dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int QuestionsIndex;
  final void Function(int code,String text) show;

  Quiz({
      required this.questions ,
      required this.show,
      required this.QuestionsIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Question(
          (questions[QuestionsIndex]['QuestionText'] as String),
        ),
        ...(questions[QuestionsIndex]['Answers'] as List<Map<String,dynamic>>).map((answer) {
          return Answer(() => show(answer['code'],answer['text']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}