import 'package:flutter/material.dart';
import 'package:responsive_ui/models/transation_model.dart';
import 'package:responsive_ui/widgets/transation_list_tile.dart';

class TransationListView extends StatelessWidget {
  const TransationListView({super.key});
  static List<TransationModel> items = [
    TransationModel(isWithdrawel: true,
        title: "Cash Withdrawal", data: "13 Apr, 2022", price: r"$20,129"),
    TransationModel(isWithdrawel: false,
        title: "Landing Page project",
        data: "13 Apr, 2022 at 3:30 PM",
        price: r"$2,000"),
    TransationModel(isWithdrawel: false,
        title: "Juni Mobile App project",
        data: "13 Apr, 2022 at 3:30 PM",
        price: r"$20,129")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CustomTransationListTile(model: items[index]));
      },
    );
  }
}
