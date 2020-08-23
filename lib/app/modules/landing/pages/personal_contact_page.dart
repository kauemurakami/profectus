import 'package:flutter/material.dart';

class SecondPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5A9A9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/imagem_4.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Sabemos que todos estão fazendo sua parte neste delicado momento.",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 24),
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 32,
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Agora vamos falar um pouco do nosso.',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 24),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
