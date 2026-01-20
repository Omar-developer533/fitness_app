
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.exerciseName});
  final String exerciseName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: RadialGradient(
            radius: 1,
            center: const Alignment(1.2, 0),

            colors: [
              const Color(0xffEA8945),
              const Color(0xff161512).withValues(alpha: 0.71),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(exerciseName, style: Styles.semiBoldTextStyle20),
                  SvgPicture.asset(whatIcon, width: 16, height: 16),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Target: 0:0:0:0', style: Styles.mediumTextStyle16),
                      Text('Average: 0:0:0:0', style: Styles.mediumTextStyle16),
                    ],
                  ),
                  Icon(Icons.edit, color: Color(0xffFFA05C), size: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
