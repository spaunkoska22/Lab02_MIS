import 'package:flutter/material.dart';

import './clothes_question.dart';
import './clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });

    print('I was tapped');
  }

  var questions = [
    {
      'question': 'Select first piece of clothing:',
      'answer': ['T-SHIRT', 'SHIRT', 'SWEATSHIRT', 'TOP', 'BODYSUIT', 'JUMPER']
    },
    {
      'question': 'Select second piece of clothing:',
      'answer': ['JEANS', 'PANTS', 'LEGGINGS', 'SWEATPANTS', 'SKIRT']
    },
    {
      'question': 'Select third piece of clothing:',
      'answer': ['COAT', 'JACKET', 'BLAZER']
    },
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ClothesQuestion(questions[_questionIndex]['question'] as String),
              SizedBox(
                height: 20,
              ),
              ...(questions[_questionIndex]['answer'] as List<String>).map(
                    (answer) {
                  return ClothesAnswer(_iWasTapped, answer);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

