
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Answer extends StatelessWidget{

  final void Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
   return Container(
     width:double.infinity,
     margin:EdgeInsets.symmetric(vertical: 1,horizontal: 120) ,
     child: RaisedButton(
       textColor: Colors.green,
       child: Text(answerText),
       onPressed: selectHandler,
   ),
   );
  }

}