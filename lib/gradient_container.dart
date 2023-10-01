import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_first_flutter_app/styled_text.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer(this.random,
      {super.key, this.gradientColors = const [Colors.lightBlue, Colors.deepPurple], this.diceFace = 1});

  GradientContainer.yellowTheme(this.random, {super.key})
      : gradientColors = const [Colors.deepOrange, Colors.yellow],
        diceFace = 1;

  GradientContainer.purpleTheme(this.random, {super.key})
      : gradientColors = const [Colors.deepOrange, Colors.purple],
        diceFace = 1;

  final List<Color> gradientColors;
  Random random;
  int diceFace;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledText('Role a Dice'),
            Image.asset('assets/images/dice-$diceFace.png', width: 200),
            ElevatedButton(onPressed: onPressed, child: const Text("Roll"))
          ],
        ),
      ),
    );
  }

  void onPressed() {
    diceFace = random.nextInt(6) + 1;
    print(diceFace);
  }
}
