import 'package:flutter/material.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CustomIconButton extends Container {
  final VoidCallback callback;
  final IconData icon;
  final String message;

  CustomIconButton({this.callback, this.icon, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: 30,
      height: 30,
      child: Column(
        children: [
          FloatingActionButton(shape: CircleBorder(),
            backgroundColor: Color(0xff360A4B),
            child: Icon(
              this.icon,
              size: 40,
              color: Colors.white,
            ),
            onPressed: this.callback,
            splashColor: Color(0xff360A4B),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(this.message, style: TextStyle(color: Colors.white),),
            )
        ],
      ),
    );
  }
}
