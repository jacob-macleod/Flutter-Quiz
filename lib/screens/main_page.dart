import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/styled_text.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) {
    return StyledText(myText: "Learn Flutter the fun way!");
  }
}
