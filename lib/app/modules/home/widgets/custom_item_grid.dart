import 'package:flutter/material.dart';

class CustomItemGrid extends Container {
  final String message;

  final String pontuacao;

  CustomItemGrid({@required this.message, this.pontuacao});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 24),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                this.pontuacao.toString(), //user . cidade / estado / região
                style: TextStyle(color: Color(0xff360A4B), fontSize: 48.0),
              ),
            ),
            Text(
              this.message,
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
