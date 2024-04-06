import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';
import 'package:responsive_ui/widgets/card_page_view.dart';
import 'package:responsive_ui/widgets/dots_indecator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

late PageController pageController;
int currantPageIndex = 0;

class _MyCardSectionState extends State<MyCardSection> {
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currantPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Column(
          children: [
            // const SizedBox(
            //   height: 24,
            // ),
            Row(
              children: [
                Text(
                  "My card",
                  style: AppStyles.styleSemiBold20(context)
                      .copyWith(color: const Color(0xff064061)),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CardPageView(pageController: pageController),
            const SizedBox(
              height: 8,
            ),
            Dotsindecator(
              currantpagenumber: currantPageIndex,
            )
          ],
        ),
      ),
    );
  }
}
