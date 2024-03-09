// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:responsive_ui/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    Key? key,
    required this.itemModel,
  }) : super(key: key);
  final DrawerItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(itemModel.icon),
      title: Text(itemModel.title),
    );
  }
}
