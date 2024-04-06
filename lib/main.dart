import 'package:flutter/material.dart';
import 'package:responsive_ui/views/dash_bord_home_view.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const ResponsiveDashBoard(),
    enabled: false,
  ));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const ResponsiveHomeViewDashBoardViewBody(),
    );
  }
}
