import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CustomRadioEscolaridade extends Container {
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
                    groupValue: controller.escolaridadeIndex,
                    onChanged: (value) =>
                        controller.onChangedEscolaridade(value),
                  ),
                  Text(controller.escolaridade[0], style:TextStyle(fontWeight: controller.escolaridadeIndex == 0 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.escolaridadeIndex,
                    onChanged: (value) =>
                        controller.onChangedEscolaridade(value),
                  ),
                  Text(controller.escolaridade[1], style:TextStyle(fontWeight: controller.escolaridadeIndex == 1 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 2,
                    groupValue: controller.escolaridadeIndex,
                    onChanged: (value) =>
                        controller.onChangedEscolaridade(value),
                  ),
                  Text(controller.escolaridade[2], style:TextStyle(fontWeight: controller.escolaridadeIndex == 2 ? FontWeight.bold : null,)),

                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 3,
                    groupValue: controller.escolaridadeIndex,
                    onChanged: (value) =>
                        controller.onChangedEscolaridade(value),
                  ),
                  Text(controller.escolaridade[3], style:TextStyle(fontWeight: controller.escolaridadeIndex == 3 ? FontWeight.bold : null,)),

                ]),
              ),
            ],
          )),
    );
  }
}
