import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/custom_image.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_name_section.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_steps_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExerciseDetailsViewBody extends StatelessWidget {
  const ExerciseDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                CustomAppBar(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  widget: Text(
                    'Exercise Details',
                    style: Styles.mediumTextStyle18.copyWith(
                      color: const Color(0xffA1A1AA),
                    ),
                  ),
                  padding: EdgeInsets.zero,
                ),
                const SizedBox(height: 20),
                Center(child: const CustomImage()),
                const SizedBox(height: 20),
                const ExerciseNameSection(),
                SizedBox(height: 20),
                ExerciseStepsSection(),
                SizedBox(height: 20),
                TargetMusclesSection(),
                SizedBox(height: 20),
                EquipmentsSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TargetMusclesSection extends StatelessWidget {
  const TargetMusclesSection({super.key});
  final List<String> targetMuscles = const ['cardiovascular system'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text.rich(
          TextSpan(
            text: 'Target ',
            style: Styles.mediumTextStyle18,
            children: [
              TextSpan(
                text: 'Muscles :',
                style: Styles.mediumTextStyle18.copyWith(
                  color: buttonColorStart,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                1,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 5),
                  child: Text(
                    targetMuscles[index],
                    style: Styles.regularTextStyle14.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EquipmentsSection extends StatelessWidget {
  const EquipmentsSection({super.key});
  final List<String> equipments = const ['cardiovascular system'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Equipments:', style: Styles.mediumTextStyle18),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                1,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 12),
                  child: Text(
                    equipments[index],
                    style: Styles.regularTextStyle14.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
