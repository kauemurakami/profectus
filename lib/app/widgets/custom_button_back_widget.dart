import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/theme/app_colors_theme.dart';

class CustomButtonBack extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: mainColor, size: 30,),
      onPressed: () => Get.back(),
    ));
  }
}
