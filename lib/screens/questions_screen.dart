import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/styled_text.dart';
import 'package:flutter_quiz/componments/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  void onButtonClick() {
    print("button clicked");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText(myText: "The Question"),
        const SizedBox(height: 30),
        AnswerButton("Answer 1", onButtonClick),
        AnswerButton("Answer 2", onButtonClick),
        AnswerButton("Answer 3", onButtonClick),
        AnswerButton("Answer 4", onButtonClick),
      ],
    );
  }
}
