import "package:flutter/material.dart";

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
  int questionNum = 0;
  void answerQuestions() {
    setState(() {
      questionNum += 1;
    });
    print("I pressed button one");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what is your name",
      "where do you live",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Title(color: Colors.green, child: Text("Welcome")),
          ),
          body: Column(
            children: [
              Text(questions[questionNum]),
              ElevatedButton(
                  onPressed: answerQuestions, child: Text("press me")),
              TextField(
                  decoration: const InputDecoration(
                hintText: 'Enter your email',
              ))
            ],
          )),
    );
  }
}
