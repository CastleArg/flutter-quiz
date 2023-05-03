import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.amber),
        child: const StartScreen(),
      ),
    ),
  ));
}