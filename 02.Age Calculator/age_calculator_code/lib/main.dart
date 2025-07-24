import 'package:flutter/material.dart';
import 'screens/age_screen.dart';

void main() {
  runApp(const AgeCalculatorApp());
}

class AgeCalculatorApp extends StatelessWidget {
  const AgeCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const AgeScreen(),
    );
  }
}
