import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/modules/landing/landing_page.dart';
import 'package:vitalis/app/routes/app_pages.dart';
import 'package:vitalis/app/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      home: LandingPage(),
      getPages: AppPages.pages,
      theme: appThemeData,
    )
  );
}

