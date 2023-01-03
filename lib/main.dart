import "package:flutter/material.dart";
import "./quiz.dart";
import "./result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  int _questionNum = 0;
  int _totalScore = 0;
  void answerQuestions(score) {
    setState(() {
      _questionNum += 1;
      _totalScore += score;
    });
    print("I pressed button one");
  }

  void resetQuiz() {
    setState(() {
      _questionNum = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "question_text": "what is your name",
        "answers": [
          {"text": "Jusail", "score": 100},
          {"text": "Jisly", "score": 50},
          {"text": "Rana", "score": 10},
        ]
      },
      {
        "question_text": "where fo you live",
        "answers": [
          {"text": "Mawanella", "score": 100},
          {"text": "Colombo", "score": 100},
          {"text": "Kandy", "score": 100},
        ],
      },
      {
        "question_text": "where food do you like",
        "answers": [
          {"text": "pizza", "score": 100},
          {"text": "fried rice", "score": 50},
          {"text": "rice and curry", "score": 20},
          {"text": "burger", "score": 10}
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.green, child: Text("Welcome")),
        ),
        body: _questionNum < questions.length
            ? Quiz(questions, _questionNum, answerQuestions)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
