import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

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
        child: StyledText("Hi,\nGayashan."),
      ),
    );
  }
}
