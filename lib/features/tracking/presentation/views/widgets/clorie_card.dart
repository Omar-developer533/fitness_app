import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CalorieCard extends StatelessWidget {
  const CalorieCard({
    super.key,
    required this.percent,
    required this.calNum,
    required this.repsNumber,
    required this.exerciseName,
    required this.day,
    this.color,
  });
  final String day;
  final double percent;
  final String calNum;
  final String repsNumber;
  final String exerciseName;
  final Color? color;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: RadialGradient(
            radius: 1,
            center: Alignment(1.2, 0),

            colors: [
              Color(0xffEA8945),
              Color(0xff161512).withValues(alpha: 0.71),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day,
                    style: Styles.mediumTextStyle16.copyWith(
                      color: color ?? Color(0xffA1A1AA),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 700,
                        animateFromLastPercent: true,
                        startAngle: 180,
                        backgroundColor: Color(0xff434343),
                        lineWidth: 10,
                        percent: percent,
                        radius: 34,
                        linearGradient: linearGradient(
                          buttonColorStart,
                          buttonColorEnd,
                        ),
                        center: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(calNum, style: Styles.semiBoldTextStyle16),
                              Text('cal', style: Styles.mediumTextStyle12),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(exerciseName, style: Styles.semiBoldTextStyle24),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Reps completed:', style: Styles.mediumTextStyle14),
                  SizedBox(height: 10),
                  Text(repsNumber, style: Styles.semiBoldTextStyle16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
