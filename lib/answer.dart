import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answer;

  const Answer({required this.answerQuestion, required this.answer, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: answerQuestion,
            child: Text(answer),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[800])),
          ),
        ),
      ),
    );
  }
}
