import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  final String message;
  final Color color;
  CustomLoading({@required this.message, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage('assets/images/save_data.png'),fit: BoxFit.cover),
      ),
      child: CircularProgressIndicator(semanticsLabel: 'Estamos salvando seus dados, é rapidinho.',),
    );
  }
}
