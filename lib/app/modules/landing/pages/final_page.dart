import 'package:flutter/material.dart';

class FinalPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffb3ffd9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/imagem_8.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Com a chegada rápida e precisa da vacina, ainda podemos poupar milhares de vidas.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Focando no grupo de risco, podemos retornar rapidamente a nossa rotina",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "E sabemos que muitas pessoas do grupo de risco, ainda não contrairam o vírus, essas devem ter prioridade na imunização.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
