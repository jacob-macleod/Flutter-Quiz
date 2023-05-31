import "package:flutter/material.dart";
import 'package:flutter_quiz/gradient_container.dart';
import 'package:flutter_quiz/screens/main_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(content: MainPage()),
      ),
    );
  }
}
