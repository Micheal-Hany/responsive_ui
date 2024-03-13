import 'package:flutter/material.dart';

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
      child: const Column(children: [ ]),
    );
  }
}
