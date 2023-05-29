import "package:flutter/material.dart";
import 'package:flutter_quiz/gradient_container.dart';

void main() {
  // Adding const means that if the value is used again, the existing value in memory is used - improve performance
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
