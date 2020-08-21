import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/data/model/estados_model.dart';

import '../cadastro_controller.dart';

class CustomDropDownEstados extends GetView {
  final CadastroController controller = Get.find<CadastroController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => DropdownButton<Estado>(
            value: null,
            hint: controller.selectedEstado.nome != null
                ? Text(controller.selectedEstado.nome)
                : Text("Estado"),
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(fontSize: 24),
            items: builDropdownMenuItems(controller.estados.value),
            underline:
                Container(height: 2, color: Theme.of(context).accentColor),
            onChanged: (value) => controller.onChangedEstado(value),
          )),
    );
  }

  List<DropdownMenuItem<Estado>> builDropdownMenuItems(List<Estado> estados) {
    List<DropdownMenuItem<Estado>> items = List();
    for (Estado estado in estados) {
      items.add(DropdownMenuItem(
        value: estado,
        child: Text(
          estado.sigla,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ));
    }
    return items;
  }
}
