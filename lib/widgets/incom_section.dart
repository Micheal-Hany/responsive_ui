import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/all_expenses_drob_down.dart';
import 'package:responsive_ui/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Income",
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: const Color(0xff064061)),
                ),
                const Spacer(),
                const AllExpensesDrobDown()
              ],
            ),
            const IncomeChart(),
          ],
        ),
      ),
    );
  }
}
