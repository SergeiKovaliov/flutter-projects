import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen(this.onSelectAnswer, {super.key});

  void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionNumber = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(context) {
    List<String> shuffledQuestions = questions[questionNumber].getShuffledAnswers();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              questions[questionNumber].question,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...shuffledQuestions.map((item) {
              return AnswerButton(
                onTap: () {
                  answerQuestion(item);
                },
                answer: item,
              );
            }),
          ],
        ),
      ),
    );
  }
}