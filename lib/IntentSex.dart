import 'package:flutter/material.dart';

class IntentSex extends StatelessWidget {
  const IntentSex({super.key, required this.color, required this.sex, required this.nameSex});

  final Color color;
  final IconData sex;
  final String nameSex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(sex, color: Colors.white, size: 80.0),
        SizedBox(height: 10.0),
        Text(
          nameSex,
          style: TextStyle(
            color: color,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}