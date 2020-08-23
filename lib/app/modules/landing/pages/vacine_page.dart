import 'package:flutter/material.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class SixthPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffD8D8D8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/imagem_6.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Ao disponibilizar os dados ao governo, ele poderá definir, de forma mais acertiva, o direcionamento da vacina de forma justa e eficiente, baseado na pontuação média dos cidadões de determinado estado, ou municipio",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Isso pois a vacina não será suficiente para todo no primeiro momento.",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
