import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    required this.title,
    required this.click,
    super.key,
  });

  final String title;
  final Function() click;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: click,
      child: Center(child: Text(title)),
    );
  }
}
