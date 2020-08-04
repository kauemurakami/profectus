import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/home/home_controller.dart';
import 'package:profectus/app/modules/home/widgets/custom_item_grid.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: mainColor),
                  ),
                  child: Center(
                      child: GetX<HomeController>(
                          builder: (_) => Text(
                                controller.user.pontuacao.toString(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 48.0),
                              ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetX<HomeController>(
                      builder: (_) => Text(
                            controller.user.name,
                            style:
                                TextStyle(color: Colors.black, fontSize: 24.0),
                          )),
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color(0xffC33FF7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0))),
                        width: Get.width,
                        child: GridView.count(
                          childAspectRatio: 3 / 2,
                          crossAxisCount: 2,
                          children: [
                            CustomItemGrid(
                              message: 'Oi',
                            ),
                            CustomItemGrid(
                              message: 'Oi',
                            ),
                            Text('a'),
                            Text('b'),
                            Text('c'),
                            Text('d'),
                          ],
                        )))
              ],
            )),
      ),
    );
  }
}
