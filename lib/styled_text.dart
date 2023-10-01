import 'package:flutter/material.dart';

String message = 'Hi,\nGayashan!';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
