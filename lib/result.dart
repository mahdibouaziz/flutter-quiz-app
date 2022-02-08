import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result({required this.resultScore, Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText =
        resultScore > 8 ? "You did it!" : "You are awesome and innocent!";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
