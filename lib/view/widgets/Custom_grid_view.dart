import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widgets/custom_grid_container.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return const CustomGridContaienr();
      },
    );
  }
}
