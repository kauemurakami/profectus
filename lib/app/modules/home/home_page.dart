import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        child: 
            Obx(() => Text(controller.user.name, style: TextStyle(color:Colors.black),)),
      ),
    ));
  }
}
