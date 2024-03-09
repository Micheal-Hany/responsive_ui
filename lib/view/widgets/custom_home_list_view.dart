import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widgets/custom_list_view_contaienr.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: CustomListViewContaienr());
      },
    );
  }
}
