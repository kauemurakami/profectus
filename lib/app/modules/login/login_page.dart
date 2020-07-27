import 'package:flutter/material.dart';
import 'package:vitalis/app/modules/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/theme/app_text_theme.dart';
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
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Login',
                    style: title,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
                      color: controller.isCPF ? Colors.green : Colors.grey,
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
                      onChanged: (value) => controller.onChangeCpf(value),
                      onSaved: (value) => controller.onSavedCpf(value),
                      text: 'SENHA',
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.remove_red_eye),iconSize: 30,
                      color: controller.showPassword ? Colors.purpleAccent : Colors.grey,
                      onPressed: ()=> controller.show(),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      )),
    ));
  }
}
