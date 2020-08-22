import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';

class CustomRadioContraiu extends Container {
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
                    groupValue: controller.trabalhaIndex,
                    onChanged: (value) => controller.onChangedContraiu(value),
                  ),
                  Text('Não',
                      style: TextStyle(
                        fontWeight: controller.trabalhaIndex == 0
                            ? FontWeight.bold
                            : null,
                      )),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.trabalhaIndex,
                    onChanged: (value) => controller.onChangedContraiu(value),
                  ),
                  Text('Sim',
                      style: TextStyle(
                        fontWeight: controller.trabalhaIndex == 1
                            ? FontWeight.bold
                            : null,
                      )),
                ]),
              ),
            ],
          )),
    );
  }
}
