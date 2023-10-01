import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.msg, {super.key});

  final String msg;

  // This is the same as the above
  // const StyledText(String msg, {super.key}): _msg = msg;
  // final String _msg;

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
