import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';

class DescktopLayout extends StatelessWidget {
  const DescktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
          Expanded(flex: 4, child: SizedBox()),
          Expanded(flex: 3, child: SizedBox()),
        ],
      ),
    );
  }
}
