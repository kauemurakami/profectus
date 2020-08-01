import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:profectus/app/modules/landing/landing_page.dart';
import 'package:profectus/app/routes/app_pages.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';
import 'package:profectus/app/theme/app_theme.dart';
import 'package:profectus/app/widgets/custom_loading_widget.dart';

import 'app/modules/landing/landing_bindings.dart';

void main() {
  runApp(GlobalLoaderOverlay(
    useDefaultLoading: false,
    overlayColor: mainColor,
    overlayOpacity: 0.7,
  overlayWidget: CustomLoading(),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LANDING,
      initialBinding: LandingBinding(),
      home: LandingPage(),
      getPages: AppPages.pages,
      theme: appThemeData,
    ),
  ));
}
