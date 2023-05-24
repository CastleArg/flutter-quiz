import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary/questions_summary.dart';

import 'model/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {required this.chosenAnswers, required this.onRestart, super.key});
  final List<String> chosenAnswers;
  final void Function() onRestart;
  List<QuestionSummary> get summaryData {
    final List<QuestionSummary> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        QuestionSummary(i + 1, questions[i].text, chosenAnswers[i],
            questions[i].answers[0]),
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numCorrect = summaryData.where((x) {
      return x.chosenAnswer == x.correctAnswer;
    }).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                "you answered $numCorrect of ${chosenAnswers.length} questions yo"),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.refresh),
                label: const Text(
                  "Restart",
                  style: TextStyle(color: Colors.white),
                )),
          ]),
        ));
  }
}
