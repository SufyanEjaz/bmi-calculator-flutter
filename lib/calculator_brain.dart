import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretaion() {
    if (_bmi >= 30) {
      return 'You are in a state of obesity. You are more than overweighted.';
    } else if (_bmi >= 25) {
      return 'You have higher than a normal body weight. Try to Exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job & Keep it up!';
    } else {
      return 'You have lower than a normal body weight. You can eat a bit more to gain weight.';
    }
  }
}
