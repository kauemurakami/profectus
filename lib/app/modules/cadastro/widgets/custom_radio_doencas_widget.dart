import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CustomRadioDoenca extends Container {
  final CadastroController controller = Get.find<CadastroController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Row(
            children: [
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 0,
                    groupValue: controller.doencasIndex,
                    onChanged: (value) =>
                        controller.onChangedDoencas(value),
                  ),
                  Text(controller.doencas[0], style:TextStyle(fontWeight: controller.doencasIndex == 0 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.doencasIndex,
                    onChanged: (value) =>
                        controller.onChangedDoencas(value),
                  ),
                  Text(controller.doencas[1], style:TextStyle(fontWeight: controller.doencasIndex == 1 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 2,
                    groupValue: controller.doencasIndex,
                    onChanged: (value) =>
                        controller.onChangedDoencas(value),
                  ),
                  Text(controller.doencas[2], style:TextStyle(fontWeight: controller.doencasIndex == 2 ? FontWeight.bold : null,)),

                ]),
              ),
              
            ],
          )),
    );
  }
}
