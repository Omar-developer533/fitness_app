import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 220,
          width: 220,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xffE8EDF3).withValues(alpha: 0.1),
                offset: Offset(-12, -20),
                blurRadius: 56,
              ),
              BoxShadow(
                color: Color(0xff020303).withValues(alpha: 0.7),
                blurRadius: 64,
                offset: Offset(36, 12),
              ),
            ],
            border: Border.all(style: BorderStyle.none),
            borderRadius: BorderRadius.circular(200),
            gradient: linearGradient(Color(0xff32383E), Color(0xff17191C)),
          ),
        ),
        CircularPercentIndicator(
          curve: Curves.bounceInOut,
          animationDuration: 700,
          restartAnimation: true,
          animation: true,
          animateFromLastPercent: true,
          startAngle: 270,
          center: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('3,600', style: Styles.semiBoldTextStyle32),
                Text(
                  'cal',
                  style: Styles.mediumTextStyle16.copyWith(
                    color: Color(0xffE4E4E7),
                  ),
                ),
              ],
            ),
          ),
          lineWidth: 20,
          circularStrokeCap: CircularStrokeCap.round,

          percent: 0.75,
          radius: 93,
          fillColor: Colors.transparent,
          backgroundColor: Color(0xff32383E),
          linearGradient: linearGradient(buttonColorStart, buttonColorEnd),
          rotateLinearGradient: true,
          progressBorderColor: Colors.transparent,
        ),
      ],
    );
  }
}
