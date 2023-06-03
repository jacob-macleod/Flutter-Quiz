import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/styled_text.dart';
import 'package:flutter_quiz/componments/icon_button.dart';

class MainPage extends StatelessWidget {
  const MainPage(this.switchScreen, {super.key});

  final Function(String screen) switchScreen;

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
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
        ),
        const StyledText(myText: "Learn Flutter the fun way!"),
        const SizedBox(height: 20),
        ButtonWithIcon(
            onPressed: () {
              switchScreen("Questions Screen");
            },
            text: "Start Quiz"),
      ],
    );
  }
}
