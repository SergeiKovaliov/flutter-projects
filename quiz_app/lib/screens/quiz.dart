import 'package:flutter/material.dart';
import 'package:quiz_app/data/Questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/summary_screen.dart';

const Alignment beginAlign = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen';

  List<String> answers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void onSelectAnswer(String answer) {
    answers.add(answer);

    if (answers.length == questions.length) {
      setState(() {
        activeScreen = 'summary_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      answers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions') {
      screenWidget = QuestionScreen(onSelectAnswer);
    }

    if(activeScreen == 'summary_screen') {
      screenWidget = SummaryScreen(
        chosenAnswers: answers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: beginAlign,
              end: endAlignment,
              colors: [Colors.deepPurple, Colors.purple],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}