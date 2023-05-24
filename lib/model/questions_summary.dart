class QuestionSummary {
  const QuestionSummary(this.questionNumber, this.questionText,
      this.chosenAnswer, this.correctAnswer);
  final int questionNumber;
  final String questionText;
  final String correctAnswer;
  final String chosenAnswer;
}
