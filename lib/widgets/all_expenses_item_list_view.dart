import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all-expenses_item_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({
    super.key,
  });

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

List<AllExpensesItemModel> items = [
  const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129'),
];
int selectedItem = 0;

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      return Expanded(
          child: GestureDetector(
        onTap: () {
          selectedItem = e.key;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.only(right: 8),
          child: AllExpensesItem(
            model: e.value,
            isSelected: selectedItem == e.key,
          ),
        ),
      ));
    }).toList());
  }
}
