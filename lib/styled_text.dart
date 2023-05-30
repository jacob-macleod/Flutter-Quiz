import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required String this.myText});
  final String myText;

  @override
  Widget build(context) {
    return const Text("Hello world");
  }
}
