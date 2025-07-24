import 'package:bmi_calculator/constants/app_text.dart';
import 'package:bmi_calculator/screens/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppText.appName,
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
