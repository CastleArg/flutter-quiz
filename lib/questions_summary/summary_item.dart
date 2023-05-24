import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/question_identifier.dart';

import '../model/questions_summary.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.questionSummary, super.key});
  final QuestionSummary questionSummary;
  @override
  Widget build(BuildContext context) {
    final bool isCorrect =
        questionSummary.chosenAnswer == questionSummary.correctAnswer;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrect: isCorrect, index: questionSummary.questionNumber),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(questionSummary.questionText),
              Text('your answer: ${questionSummary.chosenAnswer}'),
              Text('correct answer: ${questionSummary.correctAnswer}'),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
