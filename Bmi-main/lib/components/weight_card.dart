// This widget displays and manages the weight selection card for the BMI calculator.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xylophone_app/constants/constants.dart';
import 'resuable_card.dart';

class WeightCard extends StatefulWidget {
  const WeightCard(this.text, {super.key});

  final String text;

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text, style: Theme.of(context).textTheme.bodySmall),
        Text('$weightValue', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(
              FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  weightValue--;
                });
              },
            ),
            const SizedBox(width: sizedBoxHeight),
            RoundedIconButton(
              FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  weightValue++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
