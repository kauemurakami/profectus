import 'package:flutter/material.dart';
class ThirdPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFA5858),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/loved.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Nosso objetivo é trazer a normalidade às nossas vidas de forma mais rápida !",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Devolvendo a chance de compartilhar momentos com quem você ama, lado a lado.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Valorizando aquilo que o dinheiro não pode comprar, o tempo.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}