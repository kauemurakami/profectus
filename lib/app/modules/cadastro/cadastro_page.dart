import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/theme/app_text_theme.dart';
import 'package:vitalis/app/widgets/custom_button_back_widget.dart';
import 'package:vitalis/app/widgets/custom_tff_widget.dart';

class CadastroPage extends StatelessWidget {
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
                              CustomTextFormField(text: 'CPF'),
                              CustomTextFormField(text: 'Nome'),
                              CustomTextFormField(text: 'Idade'),
                              CustomTextFormField(
                                  text: 'Condição sócio econômica'),
                              CustomTextFormField(text: 'Nome'),
                              CustomTextFormField(text: 'Nome'),
                            ]))))));
  }
}
