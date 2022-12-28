import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Title(color: Colors.green, child: Text("Welcome")),
          ),
          body: Column(
            children: [
              Text("I am Jusail"),
              Text("How are you"),
              ElevatedButton(onPressed: null, child: Text("press me"))
            ],
          )),
    );
  }
}
