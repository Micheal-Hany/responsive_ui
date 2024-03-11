import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
  });

  final String title, image, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        leading: SvgPicture.asset(image),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
