import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses_header.dart';
import 'package:responsive_ui/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          const AllExpensesItemsListView(),
          Container(
            width: 400,
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
