import 'package:flutter/material.dart';
import 'package:responsive_ui/models/chart_detiles_model.dart';
import 'package:responsive_ui/widgets/chart_item_data.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Image.asset("assets/images/chart.PNG")),
        const Expanded(flex: 5, child: ChartdataListView())
      ],
    );
  }
}

class ChartdataListView extends StatelessWidget {
  const ChartdataListView({super.key});
  static List<ChartDetailsModel> items = [
    ChartDetailsModel(
        color: const Color(0xff208CC8),
        title: "Design service",
        persentage: "40%"),
    ChartDetailsModel(
        color: const Color(0xff4EB7F2),
        title: "Design product",
        persentage: "25%"),
    ChartDetailsModel(
        color: const Color(0xff064061),
        title: "Product royalti",
        persentage: "20%"),
    ChartDetailsModel(
        color: const Color(0xffE2DECD), title: "Other", persentage: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => ChartItemData(
                model: e,
              ))
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ChartItemData(model: items[index]);
    //   },
    // );
  }
}
