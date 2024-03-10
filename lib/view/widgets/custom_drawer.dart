import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/view/widgets/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
          child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Icon(
            Icons.favorite,
            size: 48,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomDrawerItem(
              itemModel:
                  DrawerItemModel(title: " D A S B O R D ", icon: Icons.home)),
          CustomDrawerItem(
              itemModel:
                  DrawerItemModel(title: " D A S B O R D ", icon: Icons.home)),
          CustomDrawerItem(
              itemModel:
                  DrawerItemModel(title: " D A S B O R D ", icon: Icons.home)),
          CustomDrawerItem(
              itemModel:
                  DrawerItemModel(title: " D A S B O R D ", icon: Icons.home)),
        ],
      )),
    );
  }
}
