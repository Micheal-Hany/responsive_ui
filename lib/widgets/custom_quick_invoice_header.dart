import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffFAFAFA), shape: BoxShape.circle),
          child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              )),
        )
      ],
    );
  }
}
