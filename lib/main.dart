import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/landing/landing_page.dart';
import 'package:profectus/app/routes/app_pages.dart';
import 'package:profectus/app/theme/app_theme.dart';

import 'app/modules/landing/landing_bindings.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: Routes.LANDING,
      initialBinding: LandingBinding(),
      home: LandingPage(),
      getPages: AppPages.pages,
      theme: appThemeData,
    )
  );
}

