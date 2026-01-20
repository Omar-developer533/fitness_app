import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentageProgressIndicator extends StatelessWidget {
  const PercentageProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 6),
      child: LinearPercentIndicator(
        animationDuration: 1200,
        animateFromLastPercent: true,
        animation: true,
        lineHeight: 15,
        barRadius: const Radius.circular(40),
        linearGradient: linearGradient(buttonColorStart, buttonColorEnd),
        percent: .70,
        backgroundColor: const Color(0xff3F3F46),
      ),
    );
  }
}
