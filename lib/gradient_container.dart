import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, this.gradientColors = const [Colors.lightBlue, Colors.deepPurple]});

  const GradientContainer.yellowTheme({super.key}) : gradientColors = const [Colors.deepOrange, Colors.yellow];

  const GradientContainer.purpleTheme({super.key}) : gradientColors = const [Colors.deepOrange, Colors.purple];

  final List<Color> gradientColors;

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
            Image.asset('assets/images/dice-1.png', width: 200),
          ],
        ),
      ),
    );
  }
}
