import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/all_expenses_drob_down.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const AllExpensesDrobDown(),
      ],
    );
  }
}
