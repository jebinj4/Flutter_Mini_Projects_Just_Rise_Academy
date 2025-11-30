import 'package:flutter/material.dart';
import 'package:xylophone_app/constants/constants.dart';
import 'package:xylophone_app/components/resuable_card.dart';

class ResultScreen extends StatelessWidget {
  final String bmi;
  final String category;
  final String message;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.category,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ResuableCard(
              activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    category,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(bmi, style: Theme.of(context).textTheme.headlineMedium),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(message, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
