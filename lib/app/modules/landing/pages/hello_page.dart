import 'package:flutter/material.dart';
import 'package:vitalis/app/theme/app_text_theme.dart';
class HelloPage extends Container {
  @override
  Widget build(BuildContext context) {
    return     Container(
      color: Color(0xffFAAC58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/1.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Olá",
                style: style,
              ),
              Text(
                "Somos a Vitalis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Arraste para o lado e conheça \n nossa proposta!",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}