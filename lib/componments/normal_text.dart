import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Color.fromARGB(255, 153, 197, 251),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
