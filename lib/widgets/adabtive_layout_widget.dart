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
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return descktoplayout(context);
        }
      },
    );
  }
}
