import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerItemModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerItemModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
