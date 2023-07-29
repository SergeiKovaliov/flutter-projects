import 'package:flutter/material.dart';

class StyledTextForButtonWidget extends StatelessWidget {
  const StyledTextForButtonWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
      ),
    );
  }
}