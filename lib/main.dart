import 'package:bmi/inputpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMI());

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inputpage(),
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          background: Color(0xFF090C22),
          primary: Color(0xFF090C22),
          onPrimary: Colors.white,
          secondary: Color(0xFFEA1556),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xFF1D1F33),
          onSurface: Color(0xFF868895), 
        ),
      ),
    );
  }
}
