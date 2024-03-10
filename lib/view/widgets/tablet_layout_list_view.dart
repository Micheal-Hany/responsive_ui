import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widgets/custom_grid_container.dart';

class TabletLyoutListView extends StatelessWidget {
  const TabletLyoutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomGridContaienr();
        },
      ),
    );
  }
}
