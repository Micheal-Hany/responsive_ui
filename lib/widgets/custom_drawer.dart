import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar1,
            subtitle: "demo@gmail.com",
            title: "Lekan Okeowo",
          ),
        ],
      ),
    );
  }
}
