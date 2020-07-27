import 'package:flutter/material.dart';
import 'package:vitalis/app/modules/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/theme/app_colors_theme.dart';
import 'package:vitalis/app/theme/app_text_theme.dart';
import 'package:vitalis/app/widgets/custom_button_widget.dart';
import 'package:vitalis/app/widgets/custom_tff_widget.dart';

class LoginPage extends GetView<LoginController> {
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
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Text(
                    'Login',
                    style: title,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Image.asset('assets/images/login.png'),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTextFormField(
                      onChanged: (value) => controller.onChangeCpf(value),
                      onSaved: (value) => controller.onSavedCpf(value),
                      validator: (value) => controller.validateCpf(value),
                      text: 'CPF',
                      max: 11,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.check_circle_outline, size: 30,
                      color: controller.isCPF ? mainColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTextFormField(
                      onChanged: (value) => controller.onChangeSenha(value),
                      onSaved: (value) => controller.onSavedSenha(value),
                      validator: (value) => controller.validateSenha(value),
                      text: 'SENHA',
                      obscure: controller.obscure,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.remove_red_eye),iconSize: 30,
                      color: controller.obscure ? Colors.grey : mainColor ,
                      onPressed: ()=> controller.show(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:32),
              child: CustomButtonWidget(text: 'ENTRAR', callback: () => controller.login()),
            ),
            GestureDetector(
              onTap: () => controller.cadastro(),
                          child: Padding(padding: EdgeInsets.only(top: 24.0), child: Column(
                children: [
                  Text('Ainda não colaborou com o projeto?', style: descricaoLogin,),
                  Text('Increva-se aqui e ajude-nos a cumprir nosso objetivo !', style: descricaoLogin, textAlign: TextAlign.center,),

                ],
              )),
            )
          ]),
        ),
      )),
    ));
  }
}
