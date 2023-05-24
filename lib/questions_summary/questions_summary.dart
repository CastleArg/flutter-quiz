import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/summary_item.dart';
import '../model/questions_summary.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});
  final List<QuestionSummary> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return SummaryItem(questionSummary: e);
          }).toList(),
        ),
      ),
    );
  }
}
