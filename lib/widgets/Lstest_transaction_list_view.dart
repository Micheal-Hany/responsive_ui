import 'package:flutter/material.dart';
import 'package:responsive_ui/models/usert_info_model.dart';
import 'package:responsive_ui/widgets/user_info_list_title.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return   UserInfoListTile(userModel: UserInfoModel(title: "title", subtitle: "subtitle", image: "image"),
               );
        },
      ),
    );
  }
}
