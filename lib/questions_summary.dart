import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, dynamic>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text((data["question_index"] + 1).toString()),
            ],
          );
        },
      ).toList(),
    );
  }
}
