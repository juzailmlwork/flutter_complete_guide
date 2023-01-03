import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);

  String get resultPhrase {
    return "you did it your score is ${score}";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: reset,
          child: Text("Reset"),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.green),
              backgroundColor: MaterialStateProperty.all(Colors.white)),
        )
      ],
    ));
  }
}
