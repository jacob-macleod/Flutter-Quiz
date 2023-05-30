import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/styled_text.dart';
import 'package:flutter_quiz/componments/normal_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void buttonPressed() {
    print("Button Pressed");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
          ),
        ),
        const StyledText(myText: "Learn Flutter the fun way!"),
        const SizedBox(height: 20),
        NormalButton(onPressed: buttonPressed, text: "Start Quiz"),
      ],
    );
  }
}
