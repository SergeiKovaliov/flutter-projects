import 'dart:math';

import 'package:flutter/material.dart';

import 'package:roll_dice_app/widgets/text_style_widget.dart';
import 'package:roll_dice_app/utils/constants.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

final randomizer = Random();

class GradientBackground extends StatefulWidget {
  const GradientBackground(this.colorOne, this.colorTwo, {super.key});

  const GradientBackground.purple({super.key})
      : colorOne = Colors.deepPurple,
        colorTwo = Colors.deepPurpleAccent;

  final Color colorOne;
  final Color colorTwo;

  @override
  State<GradientBackground> createState() {
    return GradientBackgroundState();
  }
}

class GradientBackgroundState extends State<GradientBackground> {
  var imageNumber = randomizer.nextInt(Constants.MAX_DICE_NUMBER) + 1;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.colorOne, widget.colorTwo],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$imageNumber.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: _rollDice,
              child: const TextStyleWidget(Constants.BUTTON_TEXT),
            ),
          ],
        ),
      ),
    );
  }

  void _rollDice() {
    setState(() {
      imageNumber = randomizer.nextInt(Constants.MAX_DICE_NUMBER) + 1;
    });
  }
}