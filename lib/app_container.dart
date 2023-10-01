import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/dice_roller.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, this.gradientColors = const [Colors.lightBlue, Colors.deepPurple]});

  const AppContainer.yellowTheme({super.key}) : gradientColors = const [Colors.deepOrange, Colors.yellow];

  const AppContainer.purpleTheme({super.key}) : gradientColors = const [Colors.deepOrange, Colors.purple];

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
