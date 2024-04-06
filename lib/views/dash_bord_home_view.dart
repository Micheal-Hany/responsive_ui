import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/adabtive_layout_widget.dart';
import 'package:responsive_ui/widgets/custom_drawer.dart';
import 'package:responsive_ui/widgets/descktop_layout.dart';
import 'package:responsive_ui/widgets/mobile_layout.dart';
import 'package:responsive_ui/widgets/tablet_layout.dart';

class ResponsiveHomeViewDashBoardViewBody extends StatelessWidget {
  const ResponsiveHomeViewDashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () => scaffoldKey.currentState!.openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Color(0xff4EB7F2),
                  )),
              backgroundColor: Colors.white,
              elevation: 0,
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: Adavtivelayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          descktoplayout: (context) => const DescktopLayout()),
    );
  }
}
