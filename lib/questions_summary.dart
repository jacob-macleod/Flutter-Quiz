import 'package:flutter/material.dart';
import 'package:flutter_quiz/componments/small_text.dart';
import 'package:flutter_quiz/componments/subtitle_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  // Decide the color for a circle depending on if the answer was correct or not
  Color defineColor(String userAnswer, String correctAnswer) {
    if (userAnswer == correctAnswer) {
      return const Color.fromARGB(255, 153, 197, 251);
    } else {
      return Color.fromARGB(255, 251, 153, 153);
    }
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: defineColor(data["user_answer"] as String,
                          data["correct_answer"] as String),
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: SmallText(
                        myText:
                            ((data["question_index"] as int) + 1).toString(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SmallText(myText: data["question"] as String),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: SubtitleText(
                                myText: data["user_answer"] as String,
                                textColor: const [128, 128, 128],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: SubtitleText(
                                myText: data["correct_answer"] as String,
                                textColor: const [153, 197, 251],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
