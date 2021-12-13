import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  //getter
  String get resultPhase {
    String resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'Good';
    } else if (resultScore <= 12) {
      resultText = 'very good';
    } else if (resultScore <= 16) {
      resultText = ' very very good';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          
        ],
      ),
    );
  }
}
