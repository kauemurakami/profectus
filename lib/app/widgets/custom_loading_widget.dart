import 'package:flutter/material.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CustomLoading extends Container {
  final String message;
  final Color color;
  CustomLoading({@required this.message, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: overlayColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/save_data.png'),
              ),
            ),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          Text(
            this.message,
            style: TextStyle(color: this.color, fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
