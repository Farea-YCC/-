import 'dart:math';

import 'dart:math';

import 'package:flutter/material.dart';

class BMI {
  static double calculate(double height, double weight) {
    return weight / pow(height / 100, 2);
  }

  static String getResultText(double bmi) {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  static String getFeedback(double bmi, String gender) {
    if (bmi < 18.5) {
      return gender == "male"
          ? 'You are underweight. Try increasing your caloric intake with healthy meals.'
          : 'You are underweight. Consider consulting a nutritionist for a balanced diet.';
    } else if (bmi < 25) {
      return 'Excellent! You have a normal BMI. Keep up the balanced lifestyle!';
    } else if (bmi < 30) {
      return 'You are slightly overweight. Regular exercise and a healthy diet are recommended.';
    } else {
      return 'Your BMI indicates obesity. It is advisable to consult a healthcare provider.';
    }
  }

  static Color getResultColor(double bmi) {
    if (bmi < 18.5) return Colors.blue;
    if (bmi < 25) return Colors.green;
    if (bmi < 30) return Colors.orange;
    return Colors.red;
  }
}
