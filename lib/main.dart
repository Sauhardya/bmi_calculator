import 'package:flutter/material.dart';
import 'package:bmi_calculator/home_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.purpleAccent,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
    );
  }
}
