import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function answerQuestions; //better to use voidcallback
  final Map answerText;
  Answer(this.answerQuestions, this.answerText);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: answerQuestions,
        child: Container(
          child: Text(
            answerText["text"],
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ));
  }
}
