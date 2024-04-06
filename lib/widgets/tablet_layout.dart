import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/mobile_layout.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 16,
        ),
        MobileLayout(),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
