import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/dash_bord_home_view.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveHomeViewDashBoardViewBody(),
    );
  }
}
