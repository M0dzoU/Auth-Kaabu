import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        number.toString(),
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }
}
