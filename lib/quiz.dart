import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(selectedAnswer) {
    setState(() {
      _selectedAnswers.add(selectedAnswer);
    });
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: _selectedAnswers,
          onRestart: restartQuiz,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(answerQuestion: chooseAnswer);
    });
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = QuestionScreen(answerQuestion: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepPurple, Colors.blueGrey]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
