import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
