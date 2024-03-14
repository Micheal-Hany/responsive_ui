
import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_text_form_filed.dart';

class QuickInvoiseForm extends StatelessWidget {
  const QuickInvoiseForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: LabeledTextField(
                controller: TextEditingController(),
                hintText: "Type customer name",
                label: "Customer name",
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: LabeledTextField(
                controller: TextEditingController(),
                hintText: "Customer Email",
                label: "Type customer email",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: LabeledTextField(
                controller: TextEditingController(),
                hintText: "Item name",
                label: "Type customer name",
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: LabeledTextField(
                controller: TextEditingController(),
                hintText: "Item mount",
                label: "USD",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
