import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result({required this.resultScore, required this.resetQuiz, Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText =
        resultScore > 8 ? "You did it!" : "You are awesome and innocent!";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(onPressed: resetQuiz, child: const Text("Restart Quiz!"))
        ],
      ),
    );
  }
}
