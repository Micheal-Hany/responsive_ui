import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

final List<DrawerItemModel> items = [
  const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
  const DrawerItemModel(
      title: 'My Transaction', image: Assets.imagesMyTransctions),
  const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
  const DrawerItemModel(
      title: 'Wallet Account', image: Assets.imagesWalletAccount),
  const DrawerItemModel(
      title: 'My Investments', image: Assets.imagesMyInvestments),
];
int selectedItem = 0;

class _DrawerItemListViewState extends State<DrawerItemListView> {
  @override
  Widget
   build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedItem != index) {
              setState(() {
                selectedItem = index;
                print(selectedItem);
              });
            }
          },
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CustomDrawerItem(
                drawerModel: items[index],
                isSelected: selectedItem == index,
              )),
        );
      },
    );
  }
}
