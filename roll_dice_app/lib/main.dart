import 'package:flutter/material.dart';

import 'package:roll_dice_app/gradient_background.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
        body: GradientBackground.purple(),
      ),
    ),
  );
}