import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class ExerciseNameSection extends StatelessWidget {
  const ExerciseNameSection({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: 'Exercise ',
            style: Styles.mediumTextStyle18,
            children: [
              TextSpan(
                text: 'Name :',
                style: Styles.mediumTextStyle18.copyWith(
                  color: buttonColorStart,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),

        Container(
          height: MediaQuery.sizeOf(context).height * 0.09,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: RadialGradient(
              radius: 1,
              center: const Alignment(0, -1.6),

              colors: [
                const Color(0xffEA8945),
                const Color(0xff161512).withValues(alpha: 0.71),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(name, style: Styles.boldTextStyle16),
          ),
        ),
      ],
    );
  }
}
