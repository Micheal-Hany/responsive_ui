import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/Latest_Transaction.dart';
import 'package:responsive_ui/widgets/custom_quick_invoice_header.dart';
import 'package:responsive_ui/widgets/custom_text_form_filed.dart';
import 'package:responsive_ui/widgets/quick_inviose_form.dart';

class CustomQuickInvoice extends StatelessWidget {
  const CustomQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 16,
        ),
        LatestTransactionSection(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiseForm()
      ]),
    );
  }
}
