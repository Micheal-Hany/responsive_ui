import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/transation_list_View.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            ListTile(
              title: Text(
                "Transaction History",
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: const Color(0xff064061)),
              ),
              trailing: Text(
                'see all',
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: const Color(0xff4EB7F2)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const TransationListView(),
          ],
        ),
      ),
    );
  }
}
