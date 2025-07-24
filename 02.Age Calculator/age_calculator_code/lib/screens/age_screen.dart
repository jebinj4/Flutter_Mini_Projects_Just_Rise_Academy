import 'package:flutter/material.dart';
import '../constants/app_text.dart';
import '../utils/age_calculator.dart';
import '../widgets/result_display.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  DateTime? birthDate;
  String result = '';

  void pickDate() async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selected != null) {
      setState(() {
        birthDate = selected;
        result = calculateAge(birthDate!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppText.appTitle,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: pickDate,
                child: const Text(AppText.pickDateButton),
              ),
              const SizedBox(height: 20),
              ResultDisplay(result: result),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
