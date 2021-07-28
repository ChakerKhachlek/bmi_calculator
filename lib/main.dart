import 'package:flutter/material.dart';

import 'bmi_calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //build (building the design and display all the graphic content)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculatorScreen(),
      debugShowCheckedModeBanner: true,
    );
  }
}
