import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/styled_text.dart';

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
        TextButton(
          onPressed: buttonPressed,
          child: const Text("Hello World"),
        ),
      ],
    );
  }
}
