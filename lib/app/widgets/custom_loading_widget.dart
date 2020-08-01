import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:profectus/app/theme/app_colors_theme.dart';

class CustomLoading extends Container {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: overlayColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          SpinKitWave(
            color: Colors.white,
            size: 50.0,
            type: SpinKitWaveType.start,
          ),

        ],
      ),
    );
  }
}
