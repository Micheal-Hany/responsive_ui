
import 'package:flutter/material.dart';

class CustomListViewContaienr extends StatelessWidget {
  const CustomListViewContaienr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .1,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(15)),
    );
  }
}