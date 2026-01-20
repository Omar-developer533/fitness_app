import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_card.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/level_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimeUnderTensionBody extends StatelessWidget {
  const TimeUnderTensionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 25),
            CustomAppBar(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Time under Tension (TuT)',
                style: Styles.mediumTextStyle18.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Bench exercise', style: Styles.mediumTextStyle16),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Completed: October 25th, 2023',
                style: Styles.regularTextStyle14,
              ),
            ),
            const SizedBox(height: 10),
            const LevelCard(),
            const SizedBox(height: 14),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: linearGradient(gradientStartColor, gradientEndColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overall Accuracy:',
                      style: Styles.regularTextStyle16.copyWith(
                        color: const Color(0xffFFA05C),
                      ),
                    ),
                    Text(
                      '78%',
                      style: Styles.boldTextStyle16.copyWith(
                        color: const Color(0xffFFA05C),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const ExerciseCard(exerciseName: 'Bench'),
            const ExerciseCard(exerciseName: 'Squats'),
            const ExerciseCard(exerciseName: 'Lat Press'),
            const ExerciseCard(exerciseName: 'Deadlift'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
