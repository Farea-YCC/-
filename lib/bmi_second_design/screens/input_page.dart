import 'package:calculator_bmi/bmi_second_design/screens/result_page.dart';
import 'package:calculator_bmi/bmi_second_design/utils/bmi_calculator.dart';
import 'package:calculator_bmi/bmi_second_design/widgets/bottom_button.dart';
import 'package:calculator_bmi/bmi_second_design/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/gender_card.dart';
import 'bmi_logic.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  double _height = 170;
  double _weight = 60;
  int _age = 25;
  String _gender = "male";

  void _onGenderSelected(String gender) {
    setState(() {
      _gender = gender;
    });
  }

  void _onCalculatePressed() {
    final bmi = BMI.calculate(_height, _weight);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(bmi: bmi, age: _age, gender: _gender),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    icon: Icons.male,
                    label: 'Male',
                    isSelected: _gender == "male",
                    onTap: () => _onGenderSelected("male"),
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    icon: Icons.female,
                    label: 'Female',
                    isSelected: _gender == "female",
                    onTap: () => _onGenderSelected("female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SliderWidget(
              label: 'Height',
              value: _height,
              min: 120,
              max: 220,
              unit: 'cm',
              onChanged: (value) => setState(() => _height = value),
            ),
          ),
          Expanded(
            flex: 2,
            child: SliderWidget(
              label: 'Weight',
              value: _weight,
              min: 30,
              max: 150,
              unit: 'kg',
              onChanged: (value) => setState(() => _weight = value),
            ),
          ),
          Expanded(
            flex: 2,
            child: SliderWidget(
              label: 'Age',
              value: _age.toDouble(),
              min: 10,
              max: 100,
              unit: 'years',
              onChanged: (value) => setState(() => _age = value.round()),
            ),
          ),
          BottomButton(
            text: 'CALCULATE BMI',
            onTap: _onCalculatePressed,
          ),
        ],
      ),
    );
  }
}
