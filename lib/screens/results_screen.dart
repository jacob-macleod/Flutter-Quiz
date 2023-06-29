import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.switchScreen, {super.key});
  final List<String>? selectedAnswers;
  final Function(String screen, {List<String>? selectedAns}) switchScreen;

  List<Map<String, dynamic>> getSelectedAnswers() {
    final List<Map<String, dynamic>> summary = [];

    if (selectedAnswers != null) {
      for (int i = 0; i < selectedAnswers!.length; i++) {
        summary.add(
          {
            'question_index': i,
            'question': questions[i].text,
            'correct_answer': questions[i].answers[0],
            'user_answer': selectedAnswers?[i],
          },
        );
      }
    }

    return summary;
  }

  @override
  Widget build(context) {
    if (selectedAnswers == null) {
      return const Text("Error - no answers passed to Results Screen");
    }
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionsSummary(getSelectedAnswers()),
            const SizedBox(height: 30),
            const Text("List of answers and questions"),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
