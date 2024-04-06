import 'package:flutter/material.dart';
import 'package:responsive_ui/models/transation_model.dart';
import 'package:responsive_ui/utils/app_style.dart';

class CustomTransationListTile extends StatelessWidget {
  const CustomTransationListTile({
    Key? key,
    required this.model,
  }) : super(key: key);
  final TransationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          model.data,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          model.price,
          style: model.isWithdrawel
              ? AppStyles.styleSemiBold24(context)
                  .copyWith(color: const Color(0xffF3735E))
              : AppStyles.styleSemiBold24(context)
                  .copyWith(color: const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
