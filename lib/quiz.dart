import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final VoidCallback answerQuestion;
  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) =>
                Answer(answerQuestion: answerQuestion, answer: answer))
            .toList(),
      ],
    );
  }
}
