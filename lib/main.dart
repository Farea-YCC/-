import 'package:flutter/material.dart';
import 'dart:math';

import 'bmi_second_design/screens/input_page.dart';
void main() => runApp(const BMICalculatorApp());
class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.system, // Automatically switch theme based on system setting
      home: const InputPage(),
    );
  }
  ThemeData _buildLightTheme() {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
      ),
      sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.black,
        thumbColor: Color(0xFFEB1555),
        overlayColor: Color(0x29EB1555),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
    );
  }
  ThemeData _buildDarkTheme() {
    return ThemeData(
      primaryColor: const Color(0xFF0A0E21),
      scaffoldBackgroundColor: const Color(0xFF0A0E21),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
      ),
      sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.white,
        thumbColor: Color(0xFFEB1555),
        overlayColor: Color(0x29EB1555),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
    );
  }
}


