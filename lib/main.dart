import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_first_flutter_app/gradient_container.dart';

void main() {
  Random randomGenerator = Random();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer.purpleTheme(randomGenerator),
      ),
    ),
  );
}
