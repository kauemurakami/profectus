import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/data/model/cidades_model.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';
import 'package:profectus/app/widgets/keys.dart';

class CustomAutoCompletCidade extends GetView {
  final CadastroController controller = Get.find<CadastroController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 50,
              child: Obx(() => controller.cidades.length < 1
                  ? Container(child: Text('a'))
                  : Container(
                      height: 10,
                      child: AutoCompleteTextField<Cidade>(
                        itemSubmitted: (item) {
                          //controller.selectedCidade = item;
                          print(item);
                        },
                        key: GKeys.keyAutoComplete,
                        suggestions: controller.cidades.value,
                        itemBuilder: (context, suggestion) => Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                                height: 50,
                                width: 200,
                                child: Text(suggestion.nome))),
                        itemSorter: (a, b) => a.nome.compareTo(b.nome),
                        itemFilter: (suggestion, input) => suggestion.nome
                            .toLowerCase()
                            .startsWith(input.toLowerCase()),
                      ))))
        ],
      ),
    );
  }
}
