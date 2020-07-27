import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/modules/landing/landing_page.dart';
import 'package:vitalis/app/routes/app_pages.dart';
import 'package:vitalis/app/theme/app_theme.dart';

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

