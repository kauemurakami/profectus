import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/modules/landing/landing_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:vitalis/app/modules/landing/pages/final_page.dart';
import 'package:vitalis/app/modules/landing/pages/hello_page.dart';
import 'package:vitalis/app/modules/landing/pages/ideia_routas_page.dart';
import 'package:vitalis/app/modules/landing/pages/necessity_page.dart';
import 'package:vitalis/app/modules/landing/pages/personal_contact_page.dart';
import 'package:vitalis/app/modules/landing/pages/vacine_page.dart';

class LandingPage extends GetView<LandingController> {

  final List<Container> a = [
    HelloPage(),
    SecondPage(),
    ThirdPage(),
    FifithPage(),
    SixthPage(),
    FinalPage(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LiquidSwipe(waveType:WaveType.liquidReveal, fullTransitionValue: 300 , enableSlideIcon: true, positionSlideIcon: 0.5 ,pages: a,onPageChangeCallback: (activePageIndex) => controller.getEndSlid(activePageIndex),));
  }
}
