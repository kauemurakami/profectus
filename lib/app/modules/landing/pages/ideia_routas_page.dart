import 'package:flutter/material.dart';

class FifithPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffa0a9c6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/imagem_7.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mas como?",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "A partir de uma base de dados governamental, juntamente com os dados que serão coletados pelo nosso app",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Com isso poderemos definir prioridades para cada cidade e, consequentemente, estados brasileiros.",
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