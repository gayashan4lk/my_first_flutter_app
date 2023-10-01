import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.purple],
        ),
      ),
      child: const Center(
        child: StyledText("Hi,\nGayashan."),
      ),
    );
  }
}
