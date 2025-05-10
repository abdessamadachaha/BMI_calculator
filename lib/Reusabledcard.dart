import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  const Reusablecard({super.key, required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}