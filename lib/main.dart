import 'package:flutter/material.dart';

import 'package:my_first_flutter_app/app_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: AppContainer.purpleTheme(),
      ),
    ),
  );
}
