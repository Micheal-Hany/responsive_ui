import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/widgets/active_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerModel, required this.isSelected});
  final DrawerItemModel drawerModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerModel: drawerModel)
        : InactiveDrawerItem(drawerModel: drawerModel);
  }
}
