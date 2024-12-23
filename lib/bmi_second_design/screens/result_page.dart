import 'package:flutter/material.dart';

import '../utils/bmi_calculator.dart';
import 'bmi_logic.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  final int age;
  final String gender;

  const ResultPage({
    Key? key,
    required this.bmi,
    required this.age,
    required this.gender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your BMI Result'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your BMI',
              style: TextStyle(fontSize: 24, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              BMI.getResultText(bmi),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: BMI.getResultColor(bmi),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              BMI.getFeedback(bmi, gender),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}