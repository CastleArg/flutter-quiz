import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(void Function() this.handleButtonPress, {super.key});
  final Function() handleButtonPress;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(25, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'quiz time',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: handleButtonPress,
              label: const Text("click me!!"),
              icon: const Icon(Icons.arrow_right_alt))
        ],
      ),
    );
  }
}
