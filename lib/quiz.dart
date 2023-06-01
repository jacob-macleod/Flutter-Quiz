import "package:flutter/material.dart";
import 'package:flutter_quiz/gradient_container.dart';
import 'package:flutter_quiz/screens/questions_screen.dart';
import 'package:flutter_quiz/screens/main_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = MainPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(content: activeScreen),
      ),
    );
  }
}
