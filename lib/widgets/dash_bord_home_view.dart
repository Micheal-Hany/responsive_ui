import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/adabtive_layout_widget.dart';
import 'package:responsive_ui/widgets/descktop_layout.dart';

class ResponsiveHomeViewDashBoardViewBody extends StatelessWidget {
  const ResponsiveHomeViewDashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Adavtivelayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        descktoplayout: (context) => const DescktopLayout());
  }
}
