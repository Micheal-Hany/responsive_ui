import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/chart.PNG"),
        const Column(
          children: [],
        )
      ],
    );
  }
}
