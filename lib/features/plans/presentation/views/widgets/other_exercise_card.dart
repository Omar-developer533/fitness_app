import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:flutter/material.dart';

class OtherExerciseCard extends StatelessWidget {
  const OtherExerciseCard({super.key, this.titleStyle, required this.exercise});
  final ExerciseModel exercise;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: RadialGradient(
            radius: 1,
            center: const Alignment(0, -1.6),

            colors: [
              const Color(0xffEA8945),
              const Color(0xff161512).withValues(alpha: 0.71),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 12,
            left: 10,
            right: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exercise.name!, style: Styles.semiBoldTextStyle20),
                    const SizedBox(height: 3),
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(6),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(3),
                        3: FlexColumnWidth(5),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              'Duration:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Sets:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Reps:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Exercise:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text('30 minutes', style: Styles.mediumTextStyle14),
                            Text(
                              exercise.sets.toString(),
                              style: Styles.mediumTextStyle14,
                            ),
                            Text(
                              exercise.reps.toString(),
                              style: Styles.mediumTextStyle14,
                            ),
                            Text('5', style: Styles.mediumTextStyle14),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, size: 20, color: Color(0xffFFA05C)),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
