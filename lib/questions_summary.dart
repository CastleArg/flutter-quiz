import 'package:flutter/material.dart';
import 'package:quiz/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});
  final List<QuestionSummary> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((e) {
        return Row(
          children: [
            Text(e.questionNumber.toString()),
            Column(
              children: [
                Text(e.questionText),
                Text(e.chosenAnswer),
                Text(e.correctAnswer),
                Text(
                    e.chosenAnswer == e.correctAnswer ? 'correct' : 'incorrect')
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
