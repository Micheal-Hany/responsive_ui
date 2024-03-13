import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all-expenses_item_model.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/all_expemses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.model,
    required this.isSelected,
  });

  final AllExpensesItemModel model;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            AllExpensesItemHeader(image: model.image, isSelected: isSelected),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.title,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.price,
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.model,
    required this.isSelected,
  });
  final bool isSelected;
  final AllExpensesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            AllExpensesItemHeader(image: model.image, isSelected: isSelected),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.title,
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
