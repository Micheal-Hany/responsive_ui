
import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';

class AllExpensesDrobDown extends StatelessWidget {
  const AllExpensesDrobDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const Icon(Icons.keyboard_arrow_down_rounded)
        ],
      ),
    );
  }
}
