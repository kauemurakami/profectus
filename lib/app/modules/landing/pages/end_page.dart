import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/routes/app_pages.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';
import 'package:profectus/app/widgets/custom_button_widget.dart';

class EndPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/end.png',
            fit: BoxFit.cover,
          ),
        
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Agora que nos conhecemos melhor venha colaborar com o projeto !.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "É totalmente grátis e sem fins lucrativos.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Nossa única recompensa é ver você bem.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Se você estiver bem, nós estaremos bem.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 8.0, left: 24.0, right: 24.0),
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Expanded(
                        flex:1,
                          child: CustomButtonWidget(
                              text: 'Faça parte',
                              callback: () => Get.toNamed(Routes.CADASTRO))),
                      Expanded(
                        flex:2,
                        child: GestureDetector(
                            child: Container(
                                height: 50,
                                child: Center(
                                    child: Text(
                                  'Já realizei o cadastro',
                                  style:
                                      TextStyle(fontSize: 18, color: mainColor),
                                ))),
                            onTap: () => Get.toNamed(Routes.LOGIN)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
