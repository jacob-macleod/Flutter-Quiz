import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key, required String this.myText});
  final String myText;

  @override
  Widget build(context) {
    return Center(
      child: Container(
        child: Text(
          myText,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
