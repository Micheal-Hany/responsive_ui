import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widgets/Custom_grid_view.dart';
import 'package:responsive_ui/view/widgets/custom_drawer.dart';
import 'package:responsive_ui/view/widgets/custom_home_list_view.dart';
import 'package:responsive_ui/view/widgets/tablet_layout_list_view.dart';

class MyHomePageBody extends StatefulWidget {
  const MyHomePageBody({super.key});

  @override
  State<MyHomePageBody> createState() => _MyHomePageBodyState();
}

class _MyHomePageBodyState extends State<MyHomePageBody> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        actions: const [],
        leading: IconButton(
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
            icon: const Icon(Icons.menu)),
      ),
      body: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth > 600) {
          return const Tabletlayout();
        }
        return const MobileLayout();
      }),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomGridView(),
        CustomListView(),
      ],
    );
  }
}

class Tabletlayout extends StatelessWidget {
  const Tabletlayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        TabletLyoutListView(),
        CustomListView(),
      ],
    );
  }
}
