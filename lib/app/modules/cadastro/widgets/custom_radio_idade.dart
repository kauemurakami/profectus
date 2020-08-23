import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';

class CustomRadioIdade extends Container {
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
                    groupValue: controller.idadeIndex,
                    onChanged: (value) => controller.onChangedIdade(value),
                  ),
                  Text(controller.idades[0],
                      style: TextStyle(
                        fontWeight:
                            controller.idadeIndex == 0 ? FontWeight.bold : null,
                      )),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.idadeIndex,
                    onChanged: (value) => controller.onChangedIdade(value),
                  ),
                  Text(controller.idades[1],
                      style: TextStyle(
                        fontWeight:
                            controller.idadeIndex == 1 ? FontWeight.bold : null,
                      )),
                ]),
              ),
            ],
          )),
    );
  }
}
