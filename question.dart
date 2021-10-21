import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String QuestionsText;
  Question(this.QuestionsText);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.all(2.0),
      child: Text(
        QuestionsText,
        style: TextStyle(
            color: Colors.lightGreen, fontSize: 18,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
