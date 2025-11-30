// This widget provides a reusable card UI component for the BMI calculator.
import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  const ResuableCard(this.color, {this.child, super.key, this.onPress});

  final Color color;
  final Widget? child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: child,
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(this.icon, {this.onPressed, super.key});
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}
