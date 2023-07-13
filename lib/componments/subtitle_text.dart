import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText(
      {super.key, required this.myText, required this.textColor});
  final String myText;
  final List<int> textColor;

  @override
  Widget build(context) {
    return Text(
      myText,
      style: TextStyle(
        fontSize: 15,
        color: Color.fromRGBO(textColor[0], textColor[1], textColor[2], 1),
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
