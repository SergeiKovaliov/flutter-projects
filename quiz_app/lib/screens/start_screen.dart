import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/styled_text_for_button_widget.dart';
import 'package:quiz_app/widgets/styled_text_widget.dart';

const Alignment beginAlign = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 70,
            ),
            const StyledTextWidget('Learn Flutter the fun way!'),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              label: const StyledTextForButtonWidget('Start Quiz'),
              icon: const Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
    );
  }
}