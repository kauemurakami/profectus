import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flip_card/flip_card.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:profectus/app/modules/cadastro/cadastro_controller.dart';
import 'package:profectus/app/modules/cadastro/widgets/auto_complete_cidades.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_drop_down_widget.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_radio_condicao_social_widget.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_radio_formacao.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_radio_sair_widget.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_radio_trabalha.dart';
import 'package:profectus/app/routes/app_pages.dart';
import 'package:profectus/app/theme/app_text_theme.dart';
import 'package:profectus/app/widgets/custom_button_back_widget.dart';
import 'package:profectus/app/widgets/custom_button_widget.dart';
import 'package:profectus/app/widgets/custom_tff_widget.dart';
import 'package:profectus/app/modules/cadastro/widgets/custom_radio_doencas_widget.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CadastroPage extends GetView<CadastroController> {
  static final GlobalKey formKey = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: formKey,
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
                              CustomTextFormField(
                                text: 'CPF',
                                max: 11,
                                onChanged: (value) =>
                                    controller.onChangedCpf(value),
                                validator: (value) =>
                                    controller.validateCpf(value),
                                onSaved: (value) =>
                                    controller.onSavedCpf(value),
                                type: TextInputType.number,
                              ),
                              CustomTextFormField(
                                text: 'Nome',
                                max: 42,
                                onChanged: (value) =>
                                    controller.onChangedName(value),
                                validator: (value) =>
                                    controller.validateName(value),
                                onSaved: (value) =>
                                    controller.onSavedName(value),
                                type: TextInputType.text,
                              ),
                              CustomTextFormField(
                                text: 'Email',
                                max: 42,
                                onChanged: (value) =>
                                    controller.onChangedEmail(value),
                                validator: (value) =>
                                    controller.validateEmail(value),
                                onSaved: (value) =>
                                    controller.onSavedEmail(value),
                                type: TextInputType.emailAddress,
                              ),
                              CustomTextFormField(
                                text: 'Senha',
                                max: 12,
                                onChanged: (value) =>
                                    controller.onChangedSenha(value),
                                validator: (value) =>
                                    controller.validateSenha(value),
                                onSaved: (value) =>
                                    controller.onSavedSenha(value),
                                type: TextInputType.text,
                              ),
                              CustomTextFormField(
                                  text: 'Idade',
                                  max: 3,
                                  onChanged: (value) =>
                                      controller.onChangedIdade(value),
                                  validator: (value) =>
                                      controller.validateIdade(value),
                                  onSaved: (value) =>
                                      controller.onSavedIdade(value),
                                  type: TextInputType.number),
                              CustomDropDownEstados(),
                              //CustomAutoCompletCidade(),
                              CustomTextFormField(
                                text: 'Cidade',
                                onChanged: (value) =>
                                    controller.onChangedCidade(value),
                                validator: (value) =>
                                    controller.validateCidade(value),
                                onSaved: (value) =>
                                    controller.onSavedCidade(value),
                              ),
                              FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          'Condição Sócio Econômica',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Icon(
                                          Icons.touch_app,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                back: CustomRadioCondicaoSocial(),
                              ),
                              FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Nível de Escolaridade',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                back: CustomRadioEscolaridade(),
                              ),
                              FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 16),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Tem uma ou mais das doenças a seguir ?',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        'Diabétes - Hipertenção - Obesidade - Problemas Respitórios - Problemas Cardiovasculares',
                                        style: TextStyle(
                                            fontSize: 16, color: mainColor),
                                      ),
                                    ],
                                  ),
                                ),
                                back: CustomRadioDoenca(),
                              ),
                              FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Você está saindo de casa ?',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                back: CustomRadioSair(),
                              ),
                              FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Trabalha atualmente?',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                back: CustomRadioTrabalha(),
                              ),
                              CustomButtonWidget(
                                text: 'Registrar',
                                callback: () async {
                                  final FormState form = formKey.currentState;
                                  if (form.validate()) {
                                    form.save();
                                    scaffoldKey.currentContext
                                        .showLoaderOverlay();
                                    await controller.cadastrar();
                                    scaffoldKey.currentContext
                                        .hideLoaderOverlay();
                                    Get.offAllNamed(Routes.HOME,
                                        arguments: controller.user);
                                  }
                                },
                              )
                            ]))))));
  }
}
