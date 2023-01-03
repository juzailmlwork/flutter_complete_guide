import 'package:flutter/material.dart';
import "./answer.dart";
import "./question.dart";

class Quiz extends StatelessWidget {
  final int questionNum;
  final List questions;
  final Function answerQuestions;
  Quiz(
    this.questions,
    this.questionNum,
    this.answerQuestions,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionNum]["question_text"]),
        ...(questions[questionNum]["answers"] as List<Map>).map((answer) {
          return Answer(() => answerQuestions(answer["score"]), answer);
        }).toList()
      ],
    );
  }
}
