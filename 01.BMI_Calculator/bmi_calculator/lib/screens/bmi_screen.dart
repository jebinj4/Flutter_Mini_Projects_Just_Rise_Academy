import 'package:bmi_calculator/constants/app_text.dart';
import 'package:bmi_calculator/utlis/bmi_calculation.dart';
import 'package:bmi_calculator/widgets/input_field.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final weigthTextController = TextEditingController();
  final heightTextController = TextEditingController();
  String result = "";

  void buttonCallback() {
    final height = double.tryParse(heightTextController.text);
    final weight = double.tryParse(weigthTextController.text);
    if (height == null || weight == null || height <= 0 || weight <= 0) {
      setState(() {
        result = AppText.errorMessage;
      });
      return;
    }
    print(height);
    print(weight);
    setState(() {
      result = formulaBMI(weight, height);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppText.appName,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputField(
              labelText: AppText.weightLable,
              controller: weigthTextController,
            ),
            SizedBox(height: 10),
            InputField(
              labelText: AppText.heightLable,
              controller: heightTextController,
            ),
            ElevatedButton(
              onPressed: buttonCallback,
              child: const Text("Calculate BMI"),
            ),
            Text(result, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
