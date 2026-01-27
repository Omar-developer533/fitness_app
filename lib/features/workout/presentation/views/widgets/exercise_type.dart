import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class ExerciseType extends StatelessWidget {
  const ExerciseType({
    super.key,
    this.onTap,
    required this.isPressed,
    required this.icon,
    required this.exerciseName,
  });
  final void Function()? onTap;
  final bool isPressed;
  final IconData icon;
  final String exerciseName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: isPressed ? const Color(0xffFFA05C) : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(4),
              gradient: RadialGradient(
                radius: 1,
                center: const Alignment(0, -1.9),

                colors: [
                  const Color(0xffEA8945),
                  const Color(0xff161512).withValues(alpha: 0.71),
                ],
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 20,
                color: isPressed ? const Color(0xffEA8945) : Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            exerciseName,
            style: Styles.regularTextStyle14.copyWith(
              color: isPressed ? const Color(0xffEA8945) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
