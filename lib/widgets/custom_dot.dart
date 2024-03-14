import 'package:flutter/material.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:
              isActive ? const Color(0xff4EB7F2) : Colors.grey.withOpacity(.4)),
      height: 8,
      width: isActive ? 32 : 8,
    );
  }
}
