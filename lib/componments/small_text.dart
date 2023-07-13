import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({super.key, required String this.myText});
  final String myText;

  @override
  Widget build(context) {
    return Text(
      myText,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
