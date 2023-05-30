import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  Widget build(context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
