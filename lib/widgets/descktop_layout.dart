import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';

class DescktopLayout extends StatelessWidget {
  const DescktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 15,
        ),
        Expanded(
            flex: 4,
            child: Column(
              children: [Expanded(child: AllExpenses())],
            )),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
