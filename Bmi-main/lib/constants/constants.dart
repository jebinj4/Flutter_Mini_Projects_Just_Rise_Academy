// This file contains constant values used throughout the BMI calculator app (e.g., colors, enums, sizes).
import 'package:flutter/material.dart';

//Constants needed in input page

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFF111328);
const bottomContainerColor = Color(0XFFEB1555);
const sliderActiveColor = Color(0XFFFFFFFF);
const sliderInactiveColor = Color(0XFF8D8E98);

enum Gender { male, female }

double currentSliderValue = 20.0;
int heightValue = 20;
int weightValue = 60;
int ageValue = 20;

//Constants needed in child widget

const iconSize = 80.0;
const sizedBoxHeight = 15.0;

// Calculate BMI
Map<String, String> getBmiCategory(double weight, double height) {
  // Convert height from cm to meters
  double heightInMeters = heightValue / 100;
  double bmi = weight / (heightInMeters * heightInMeters);
  String category = '';
  String message = '';

  if (bmi < 18.5) {
    category = 'Underweight';
    message =
        'You are underweight. You may need to gain weight to achieve a healthy weight.';
  } else if (bmi < 25) {
    category = 'Normal weight';
    message = 'You are at a healthy weight. Keep up the good work!';
  } else if (bmi < 30) {
    category = 'Overweight';
    message =
        'You are overweight. You may need to lose weight to achieve a healthy weight.';
  } else {
    category = 'Obese';
    message =
        'You are obese. It\'s recommended that you consult a healthcare professional to develop a weight loss plan.';
  }

  return {
    'category': category,
    'message': message,
    'bmi': bmi.toStringAsFixed(1),
  };
}
