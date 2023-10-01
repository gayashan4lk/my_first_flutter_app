import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_first_flutter_app/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceFace = 1;
  final random = Random();

  void handleOnPress() {
    setState(() {
      diceFace = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Role a Dice'),
        Image.asset('assets/images/dice-$diceFace.png', width: 200),
        ElevatedButton(onPressed: handleOnPress, child: const Text("Roll")),
        TextButton(
            onPressed: () {
              print("Button Clicked");
            },
            child: const Text("Click Me"))
      ],
    );
  }
}
