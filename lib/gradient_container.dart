import 'package:flutter/material.dart';

const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

const blue1 = Color.fromARGB(255, 11, 68, 160);
const blue2 = Color.fromARGB(255, 13, 38, 79);

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.content});

  final Widget? content;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [blue1, blue2],
          begin: startGradient,
          end: endGradient,
        ),
      ),
      child: Center(
        child: content,
      ),
    );
  }
}
