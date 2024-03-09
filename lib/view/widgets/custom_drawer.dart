import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widgets/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: DrawerHeader(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Icon(
            Icons.favorite,
            size: 48,
          ),
         
        ],
      )),
    );
  }
}
