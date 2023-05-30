import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required String this.myText});
  final String myText;

  @override
  Widget build(context) {
    return Text(
      myText,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
