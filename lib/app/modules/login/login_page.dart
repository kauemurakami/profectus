import 'package:flutter/material.dart';
import 'package:vitalis/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('LoginPage')),

    body: Container(
      child: Text('login'),
      ),
    );
  }
}