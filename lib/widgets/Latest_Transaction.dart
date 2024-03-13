import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/Lstest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Latest Transaction",
              style: AppStyles.styleSemiBold16(context),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}
