import 'dart:ui';

import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/add_items.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/clorie_card.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_circular_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CalorieTrackingViewBody extends StatelessWidget {
  const CalorieTrackingViewBody({super.key});

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
                'Calories',
                style: Styles.mediumTextStyle18.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
              ),
            ),
        const    CustomCircularIndicator(),
         const   SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(calorieWhit, height: 50, width: 46),
                const Text('Total Calories burned', style: Styles.mediumTextStyle20),
              ],
            ),
            Text(
              'These numbers are based on distance and weigh',
              style: Styles.mediumTextStyle12.copyWith(
                color: const Color(0xffA1A1AA),
              ),
            ),
         const   SizedBox(height: 20),
          const  AddItems(text: 'Add calories'),
            Row(
              children: [
              const  Text('This week', style: Styles.semiBoldTextStyle16),
                IconButton(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
         const   CalorieCard(
              color: Color(0xffFFA05C),
              day: 'Today:',
              calNum: '150',
              percent: 1,
              repsNumber: '10/10',
              exerciseName: 'Push ups',
            ),
         const   CalorieCard(
              day: 'Tuesday:',
              percent: 0.4,
              calNum: '85',
              repsNumber: '7/10',
              exerciseName: 'Squats',
            ),
         const   CalorieCard(
              day: 'Monday',
              percent: 0.5,
              calNum: '165',
              repsNumber: '10/20',
              exerciseName: 'Deadlift',
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
