import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/componments/normal_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.switchScreen, {super.key});
  final List<String>? selectedAnswers;
  final Function(String screen, {List<String>? selectedAns}) switchScreen;

  List<Map<String, Object>> getSelectedAnswers() {
    final List<Map<String, Object>> summary = [];

    if (selectedAnswers != null) {
      for (int i = 0; i < selectedAnswers!.length; i++) {
        summary.add(
          {
            'question_index': i,
            'question': questions[i].text,
            'correct_answer': questions[i].answers[0],
            'user_answer': selectedAnswers![i],
          },
        );
      }
    }

    return summary;
  }

  String getCorrectAnswers(List<Map<String, Object>> summary) {
    int correctAnswers = 0;

    for (int i = 0; i < summary.length; i++) {
      if (summary[i]['correct_answer'] == summary[i]['user_answer']) {
        correctAnswers++;
      }
    }
    return correctAnswers.toString();
  }

  @override
  Widget build(context) {
    if (selectedAnswers == null) {
      return const Text("Error - no answers passed to Results Screen");
    }

    List<Map<String, Object>> answerSummary = getSelectedAnswers();
    String correctAnswers = getCorrectAnswers(answerSummary);
    String numberOfQuestions = questions.length.toString();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 80),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalText(
                myText:
                    "You answered $correctAnswers out of $numberOfQuestions questions correctly"),
            const SizedBox(height: 30),
            QuestionsSummary(answerSummary),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
