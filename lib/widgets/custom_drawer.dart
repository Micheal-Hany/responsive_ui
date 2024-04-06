import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/models/usert_info_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/active_inactive_drawer_item.dart';
import 'package:responsive_ui/widgets/drawer_item_list_view.dart';
import 'package:responsive_ui/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      decoration: const BoxDecoration(color: Colors.white),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserInfoModel(
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com",
                  image: Assets.imagesAvatar3),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InactiveDrawerItem(
                    drawerModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings)),
                InactiveDrawerItem(
                    drawerModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
