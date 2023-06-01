import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("The Question"),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
      ],
    );
  }
}
