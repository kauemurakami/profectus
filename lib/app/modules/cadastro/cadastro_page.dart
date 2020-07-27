import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/modules/cadastro/cadastro_controller.dart';
import 'package:vitalis/app/modules/cadastro/widgets/custom_radio_condicao_social_widget.dart';
import 'package:vitalis/app/modules/cadastro/widgets/custom_radio_formacao.dart';
import 'package:vitalis/app/modules/cadastro/widgets/custom_radio_trabalha.dart';
import 'package:vitalis/app/theme/app_text_theme.dart';
import 'package:vitalis/app/widgets/custom_button_back_widget.dart';
import 'package:vitalis/app/widgets/custom_tff_widget.dart';

class CadastroPage extends GetView<CadastroController> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomButtonBack(),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  'Cadastro',
                                  style: title,
                                ),
                              ),
                              CustomTextFormField(text: 'CPF', max: 11),
                              CustomTextFormField(text: 'Nome'),
                              CustomTextFormField(text: 'Idade', max: 3),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text('Condição Sócio Econômica', style: TextStyle(fontSize: 20),),
                              ),
                              CustomRadioCondicaoSocial(),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text('Nível de Escolaridade', style: TextStyle(fontSize: 20),),
                              ),
                              CustomRadioEscolaridade(),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text('Trabalha atualmente?', style: TextStyle(fontSize: 20),),
                              ),
                              CustomRadioTrabalha(),
                              CustomTextFormField(text: 'Nome'),
                              CustomTextFormField(text: 'Nome'),
                            ]))))));
  }
}
