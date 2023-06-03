import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/normal_text.dart';
import 'package:flutter_quiz/componments/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer, {super.key});
  final void Function(String) chooseAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  var currentQuestion = questions[0];

  onButtonClick(selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex < questions.length) {
        currentQuestion = questions[currentQuestionIndex];
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

/*import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/normal_text.dart';
import 'package:flutter_quiz/componments/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  var currentQuestion = questions[0];
  void onButtonClick() {
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex < questions.length) {
        currentQuestion = questions[currentQuestionIndex];
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
            return AnswerButton(
              answer,
              onButtonClick,
            );
          }),
        ],
      ),
    );
  }
}*/
