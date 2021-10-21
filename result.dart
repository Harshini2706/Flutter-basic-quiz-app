import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/quiz.dart';
class Result extends StatelessWidget{
  final int resultScore;
  final void Function() _resultHandler;
  Result(this.resultScore,
      this._resultHandler);
  String get resultPhrase{
    var resultText="Wow!! Thanks for your order";
    print(resultText);
    if(resultScore<200){
      resultText="Good food, Good life";
    }
    else if(resultScore<300 && resultScore>200){
      resultText="you made our day!!";
    }
    else if( resultScore>400){
      resultText="Excess maida is not good for health";
    }
    else{
      resultText="New food new begining";
    }
    return resultText;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width:double.infinity,

       child:Column(
         mainAxisAlignment:MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,

       children: [
         Text(resultPhrase,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 25,),),
         SizedBox(height: 20,),
         Text("Your satisfaction is our victory",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 20),),
          FlatButton(child: Text('Restart Quiz',style:TextStyle(color:Colors.white,fontStyle: FontStyle.normal)),onPressed: _resultHandler,)
]
          ),


     );


  }

}