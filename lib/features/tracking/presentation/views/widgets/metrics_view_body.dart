import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_router.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/form_tracking.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/metric_type_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MetricsViewBody extends StatelessWidget {
  const MetricsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        CustomAppBar(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          widget: Text(
            'Metrics',
            style: Styles.mediumTextStyle18.copyWith(
              color: const Color(0xffA1A1AA),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  MetricTypeCard(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBodyWeightView);
                    },
                    icon: calorieIcon,
                    title: 'Body weight',
                    subTitle: 'Input weight weekly to track progress.',
                  ),
                  MetricTypeCard(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kGoalView);
                    },
                    icon: flagIcon,
                    title: 'Goals',
                    subTitle: 'List of all goals created',
                  ),
                  const FormTracking(),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MetricTypeCard(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kCalorieTrackingView);
                    },
                    icon: calorieIcon,
                    title: 'Calories burned',
                    subTitle: 'Based on distance and weight.',
                  ),
                  MetricTypeCard(
                    onTap: () {
                      GoRouter.of(
                        context,
                      ).push(AppRouter.kTimeUnderTensionView);
                    },
                    icon: tutIcon,
                    title: 'T.U.T',
                    subTitle: 'Time under tension',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
