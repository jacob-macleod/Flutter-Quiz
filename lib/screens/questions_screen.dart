import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/normal_text.dart';
import 'package:flutter_quiz/screens/main_page.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer, this.switchScreen, {super.key});
  final void Function(String) chooseAnswer;
  final Function(String screen, {List<String>? selectedAns}) switchScreen;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  var currentQuestion = questions[0];
  List<String> selectedAnswers = [];

  onButtonClick(selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);
    selectedAnswers.add(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex < questions.length) {
        currentQuestion = questions[currentQuestionIndex];
      } else {
        widget.switchScreen("Results Screen", selectedAns: selectedAnswers);
      }
    });
  }

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NormalText(myText: currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return ElevatedButton(
              onPressed: () {
                onButtonClick(answer);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                backgroundColor: const Color.fromRGBO(3, 46, 74, 1),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text(
                answer,
                textAlign: TextAlign.center,
              ),
            );
          }),
        ],
      ),
    );
  }
}
