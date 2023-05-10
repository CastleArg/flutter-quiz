import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, super.key});
  final List<String> chosenAnswers;

  List<QuestionSummary> getSummaryData() {
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
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("you answered x of ${chosenAnswers.length} questions yo"),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData: getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          TextButton(onPressed: () {}, child: const Text("hi"))
        ]),
      ),
    );
  }
}

class QuestionSummary {
  const QuestionSummary(this.questionNumber, this.questionText,
      this.chosenAnswer, this.correctAnswer);
  final int questionNumber;
  final String questionText;
  final String correctAnswer;
  final String chosenAnswer;
}
