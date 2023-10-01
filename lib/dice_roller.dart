import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final random = Random();
  int diceFace = 1;

  void handleOnPress() {
    setState(() {
      diceFace = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Text(
          "You have rolled #$diceFace",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 220,
          child: Image.asset('assets/images/dice-$diceFace.png', width: 200),
        ),
        const SizedBox(height: 30),
        ElevatedButton(onPressed: handleOnPress, child: const Text("Roll")),
      ],
    );
  }
}
