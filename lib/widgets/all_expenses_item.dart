import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all-expenses_item_model.dart';
import 'package:responsive_ui/widgets/active_and_inactive_all_ecpenses_items.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isSelected});
  final AllExpensesItemModel model;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
            model: model,
            isSelected: isSelected,
          )
        : InActiveAllExpensesItem(model: model, isSelected: isSelected);
  }
}
