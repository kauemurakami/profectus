import 'package:flutter/material.dart';

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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Iremos definir uma logística para a distribuição das vacinas através desses parâmetros.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Distribuindo com eficiência e precisão em locais prioritários.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Isso significa poupar tempo na distribuição da vacina, salvando vidas, e ao mesmo tempo, poupando dinheiro dos cofres públicos, ajudando também na recuperação econômica.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
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