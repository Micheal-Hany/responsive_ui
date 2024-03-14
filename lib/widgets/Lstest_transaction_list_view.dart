import 'package:flutter/material.dart';
import 'package:responsive_ui/models/usert_info_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/user_info_list_title.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel> items = [
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(userModel: items[index]));
        },
      ),
    );
  }
}
