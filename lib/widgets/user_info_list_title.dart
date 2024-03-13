import 'package:flutter/material.dart';
import 'package:responsive_ui/models/usert_info_model.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userModel,
    
  });

  final UserInfoModel userModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(
          userModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        leading: SvgPicture.asset(userModel.image),
        subtitle: Text(
          userModel.subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
