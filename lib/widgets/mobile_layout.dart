import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses.dart';
import 'package:responsive_ui/widgets/custom_quick_invoice.dart';
import 'package:responsive_ui/widgets/incom_section.dart';
import 'package:responsive_ui/widgets/my_card_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('MobileLayout');
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AllExpenses(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomQuickInvoice(),
        ),
        SliverToBoxAdapter(child: MyCardSection()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(child: IncomeSection())
      ],
    );
  }
}
