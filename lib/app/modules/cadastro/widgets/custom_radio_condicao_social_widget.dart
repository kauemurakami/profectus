import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/modules/cadastro/cadastro_controller.dart';
import 'package:vitalis/app/theme/app_colors_theme.dart';

class CustomRadioCondicaoSocial extends Container {
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
                    groupValue: controller.condicaoIndex,
                    onChanged: (value) =>
                        controller.onChangedCondicaoSocio(value),
                  ),
                  Text(controller.condicoesSocio[0] , style:TextStyle(fontWeight: controller.condicaoIndex == 0 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.condicaoIndex,
                    onChanged: (value) =>
                        controller.onChangedCondicaoSocio(value),
                  ),
                  Text(controller.condicoesSocio[1], style:TextStyle(fontWeight: controller.condicaoIndex == 1 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 2,
                    groupValue: controller.condicaoIndex,
                    onChanged: (value) =>
                        controller.onChangedCondicaoSocio(value),
                  ),
                  Text(controller.condicoesSocio[2], style:TextStyle(fontWeight: controller.condicaoIndex == 2 ? FontWeight.bold : null,)),

                ]),
              ),
            ],
          )),
    );
  }
}
