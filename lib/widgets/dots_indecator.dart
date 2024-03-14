import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_dot.dart';

class Dotsindecator extends StatelessWidget {
  const Dotsindecator({super.key, required this.currantpagenumber});
  final int currantpagenumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: CustomDotIndecator(isActive: index == currantpagenumber))),
    );
  }
}
