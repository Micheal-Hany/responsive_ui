import 'package:flutter/material.dart';

class Adavtivelayout extends StatelessWidget {
  const Adavtivelayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.descktoplayout});
  final WidgetBuilder mobileLayout, tabletLayout, descktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth.isInRange(0,800)) {
          return mobileLayout(context);
        } else if (constraints.maxWidth.isInRange(800, 1200)) {
          return tabletLayout(context);
        } else {
          return descktoplayout(context);
        }
      },
    );
  }
 
}

extension DoubleRangeExtension on double {
  bool isInRange(double min, double max) {
    return this >= min && this <= max;
  }
}

