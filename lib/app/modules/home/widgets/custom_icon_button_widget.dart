import 'package:flutter/material.dart';

class CustomIconButton extends Container {
  final VoidCallback callback;
  final IconData icon;
  final String message;
  final String tag;

  CustomIconButton({this.callback, this.icon, this.message, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: 30,
      height: 30,
      child: Column(
        children: [
          FloatingActionButton(
            shape: CircleBorder(),
            heroTag: this.tag,
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
            child: Container(
              child: Text(
                this.message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
