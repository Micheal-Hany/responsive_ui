import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/custom_quick_invoice.dart';
import 'package:responsive_ui/widgets/incom_section.dart';
import 'package:responsive_ui/widgets/my_card_section.dart';

class DescktopLayout extends StatelessWidget {
  const DescktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print("DescktopLayout");
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          AllExpenses(),
                          SizedBox(
                            height: 24,
                          ),
                          CustomQuickInvoice()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          MyCardSection(),
                          SizedBox(
                            height: 16,
                          ),
                          IncomeSection()
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
