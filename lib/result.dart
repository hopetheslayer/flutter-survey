import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;


  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8)
      {
        resultText = "You are Good";
      }
    else if (resultScore <= 12)
      {
        resultText = " Pretty likeable";
      }
    else if (resultScore <=16)
      {
        resultText = "You are ... Strange? !";
      }
    else{
      resultText = " You Fucked Up!";
    }
    return resultText;
  }

  String get Skor {
    final int j = resultScore;
    String t = "$j";
       return t;
  }

  @override
  Widget build(BuildContext context) {
      return  Center(
          child : new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            new Container(
            alignment: Alignment.center,
            child: new Text('$resultPhrase',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Aleo',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.red
              ),
            ),
            ),
              new Container(
                alignment: Alignment.center,
                child: new Text('Your Score is :$Skor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Aleo',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.blueAccent
                  ),
                ),
              ),
            ],

          )

      );
  }
}

