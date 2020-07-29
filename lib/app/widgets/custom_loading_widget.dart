import 'package:flutter/material.dart';

class CustomLoading extends Container {

  final String message;
  final Color color;
  CustomLoading({@required this.message, this.color = Colors.white });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/save_data.png')),
          ),
          child: CircularProgressIndicator(),
        ),
        Text(this.message ?? '', style: TextStyle(color: this.color, fontSize: 18),)
      ],
    );
  }
}