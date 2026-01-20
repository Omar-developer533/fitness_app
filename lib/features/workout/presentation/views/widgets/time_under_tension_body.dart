import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/level_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            CustomAppBar(
              padding: EdgeInsets.all(0),
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Time under Tension (TuT)',
                style: Styles.mediumTextStyle18.copyWith(
                  color: Color(0xffA1A1AA),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Bench exercise', style: Styles.mediumTextStyle16),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Completed: October 25th, 2023',
                style: Styles.regularTextStyle14,
              ),
            ),
            const SizedBox(height: 10),
            LevelCard(),
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
                        color: Color(0xffFFA05C),
                      ),
                    ),
                    Text(
                      '78%',
                      style: Styles.boldTextStyle16.copyWith(
                        color: Color(0xffFFA05C),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ExerciseCard(exerciseName: 'Bench'),
            ExerciseCard(exerciseName: 'Squats'),
            ExerciseCard(exerciseName: 'Lat Press'),
            ExerciseCard(exerciseName: 'Deadlift'),
          ],
        ),
      ),
    );
  }
}

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
            center: Alignment(1.2, 0),

            colors: [
              Color(0xffEA8945),
              Color(0xff161512).withValues(alpha: 0.71),
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
              Row(
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
