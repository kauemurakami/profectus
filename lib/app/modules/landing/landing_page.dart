import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/modules/landing/landing_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LandingPage extends GetView<LandingController> {

  List<Widget> a = [
    Container(child: Text('oi')),
    Container(child: Text('ola')),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: LiquidSwipe(pages: null)
    );
  }
}