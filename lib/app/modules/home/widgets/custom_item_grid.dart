import 'package:flutter/material.dart';

class CustomItemGrid extends Container {

  final String message;

  CustomItemGrid({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(24.0)
      ),
      child: Text(this.message),
    );
  }
}