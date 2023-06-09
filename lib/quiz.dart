import "package:flutter/material.dart";
import 'package:flutter_quiz/gradient_container.dart';
import 'package:flutter_quiz/screens/questions_screen.dart';
import 'package:flutter_quiz/screens/main_page.dart';
import 'package:flutter_quiz/screens/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  void initState() {
    activeScreen = MainPage(switchScreen);
    super.initState();
  }

  void switchScreen(String screen, {List<String>? selectedAns}) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        if (screen == "Main Page") {
          activeScreen = MainPage(switchScreen);
          selectedAnswers.clear();
        } else if (screen == "Questions Screen") {
          activeScreen = QuestionsScreen(chooseAnswer, switchScreen);
        } else {
          activeScreen = ResultsScreen(selectedAnswers, switchScreen);
        }
      });
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
