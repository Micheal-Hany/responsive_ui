import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/card_background.png")),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Name card",
                        style: AppStyles.styleRegular14(context)
                            .copyWith(color: const Color(0xffFFFFFF)),
                      ),
                      Text(
                        "Syah Bandi",
                        style: AppStyles.styleSemiBold20(context)
                            .copyWith(color: const Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.imagesGallery)
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "0918 8124 0042 8129",
                        style: AppStyles.styleSemiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "12/20 - 124",
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
