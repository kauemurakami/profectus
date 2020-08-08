import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/home/home_controller.dart';
import 'package:profectus/app/modules/home/widgets/custom_icon_button_widget.dart';
import 'package:profectus/app/modules/home/widgets/custom_item_grid.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Color(0xffF4EDFE),
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: controller.user.pontuacao > 2
                            ? Colors.red
                            : mainColor),
                  ),
                  child: Center(
                      child: GetX<HomeController>(
                          builder: (_) => Text(
                                controller.user.pontuacao.toString(),
                                style: TextStyle(
                                    color: Color(0xff360A4B), fontSize: 48.0),
                              ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetX<HomeController>(
                      builder: (_) => Text(
                            controller.user.name,
                            style: TextStyle(
                                color: Color(0xff360A4B), fontSize: 24.0),
                          )),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff360A4B),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(110.0))),
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Color(0xffC33FF7),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(110.0),
                              topRight: Radius.circular(110.0))),
                      width: Get.width,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 3 / 2,
                        crossAxisCount: 2,mainAxisSpacing: 24.0,
                        children: [
                          CustomItemGrid(
                            message: 'Cidade',
                            pontuacao: '3',
                          ),
                          CustomItemGrid(message: 'Região', pontuacao: '5'),
                          CustomItemGrid(message: 'Estado', pontuacao: '8'),
                          CustomItemGrid(
                            message: 'Nacional',
                            pontuacao: '4',
                          ),
                        ],
                      )),
                )),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 16.0),
                    width: Get.width,
                    color: Color(0xff360A4B),
                    child: Column(
                      children: [
                        Text('Canais de Atendimento e Ajuda.',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24.0)),
                        Expanded(
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            childAspectRatio: 3 / 3,
                            crossAxisCount: 3,
                            children: [
                              CustomIconButton(
                                icon: Icons.phone,
                                callback: () => controller.telefoneMin(),
                                message: 'Min. da Saúde',
                                tag: 'min',
                              ),
                              CustomIconButton(
                                  icon: Icons.phone,
                                  callback: () => controller.telefoneCVV(),
                                  message: 'Se sente só?',
                                  tag: 'cvv'),
                              CustomIconButton(
                                  icon: Icons.mail,
                                  callback: () =>
                                      controller.telefoneFaleConosco(),
                                  message: 'Fale conosco',
                                  tag: 'fc'),
                                    Container(
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                         
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/coffe.png',
                                      width: 60,
                                      height: 70,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Doe um cafézinho!',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          
                            ],
                          ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('Você não está sozinho!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16.0)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
