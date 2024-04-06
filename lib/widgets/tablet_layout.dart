import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/custom_quick_invoice.dart';
import 'package:responsive_ui/widgets/incom_section.dart';
import 'package:responsive_ui/widgets/mobile_layout.dart';
import 'package:responsive_ui/widgets/my_card_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print("TabletLayout");
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 16,
        ),
        Expanded(flex: 3, child: MobileLayout()),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
