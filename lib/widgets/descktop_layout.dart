import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/custom_quick_invoice.dart';

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
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AllExpenses(),
                ),
                SliverToBoxAdapter(
                  child: CustomQuickInvoice(),
                )
              ],
            )),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
