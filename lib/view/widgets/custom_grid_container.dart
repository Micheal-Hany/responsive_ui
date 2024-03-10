import 'package:flutter/material.dart';

class CustomGridContaienr extends StatelessWidget {
  const CustomGridContaienr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .2,
        width: MediaQuery.sizeOf(context).width * .2,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
