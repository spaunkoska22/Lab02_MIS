import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  Function() tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ),
          ),
          onPressed: tapped,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
        )
      ],
    );
  }
}
