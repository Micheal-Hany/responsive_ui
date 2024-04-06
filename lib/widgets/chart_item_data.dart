// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:responsive_ui/models/chart_detiles_model.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/custom_dot.dart';

class ChartItemData extends StatelessWidget {
  const ChartItemData({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ChartDetailsModel model;
  @override
  Widget build(BuildContext context) {
    // return FittedBox(
    //   fit: BoxFit.scaleDown,
    //   child: Row(
    //     children: [
    //       CustomDotIndecatorChart(color: model.color),
    //       const SizedBox(
    //         width: 12,
    //       ),
    //       Text(
    //         model.title,
    //         style: AppStyles.styleSemiBold20(context).copyWith(
    //           color: const Color(0xff064061),
    //         ),
    //       ),
    //       // const Spacer(),
    //       Text(
    //         model.persentage,
    //         style: AppStyles.styleRegular16(context)
    //             .copyWith(color: const Color(0xff208CC8)),
    //       )
    //     ],
    //   ),
    // );
    return ListTile(
        title: Text(model.title,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: const Color(0xff064061),
            )),
        leading: CustomDotIndecatorChart(color: model.color),
        trailing: Text(
          model.persentage,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xff208CC8)),
        ));
  }
}
