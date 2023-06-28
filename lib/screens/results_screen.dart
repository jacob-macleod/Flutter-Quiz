import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.switchScreen, {super.key});
  final List<String>? selectedAnswers;
  final Function(String screen, {List<String>? selectedAns}) switchScreen;

  @override
  Widget build(context) {
    print(selectedAnswers);
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
            const Text("You answered X out of Y questions correctly"),
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
