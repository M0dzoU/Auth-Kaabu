import 'package:flutter/material.dart';
import 'package:login_kaabu_plus/numero_button.dart';

class NumericPadPage extends StatelessWidget {
  const NumericPadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    numbers.shuffle();

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberButton(number: numbers[index]);
        },
      ),
    );
  }
}
