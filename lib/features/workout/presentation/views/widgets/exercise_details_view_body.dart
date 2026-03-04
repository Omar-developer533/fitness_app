import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/custom_image.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_name_section.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_steps_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExerciseDetailsViewBody extends StatelessWidget {
  const ExerciseDetailsViewBody({super.key, required this.exercise});
  final ExerciseModel exercise;
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
                Center(child: CustomImage(image: exercise.gifUrl!)),
                const SizedBox(height: 20),
                ExerciseNameSection(name: exercise.name ?? ''),
                const SizedBox(height: 20),
                ExerciseStepsSection(steps: exercise.instructions!),
                const SizedBox(height: 20),
                TargetMusclesSection(targetMuscles: exercise.targetMuscles!),
                const SizedBox(height: 20),
                EquipmentsSection(equipments: exercise.equipments!),
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
  const TargetMusclesSection({super.key, required this.targetMuscles});
  final List<String> targetMuscles;
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
        const SizedBox(height: 8),
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
                targetMuscles.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 5),
                  child: Text(
                    targetMuscles[index],
                    style: Styles.regularTextStyle14.copyWith(
                      color: const Color(0xffA1A1AA),
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
  const EquipmentsSection({super.key, required this.equipments});
  final List<String> equipments;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Equipments:', style: Styles.mediumTextStyle18),
        const SizedBox(height: 8),
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
                equipments.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 12),
                  child: Text(
                    equipments[index],
                    style: Styles.regularTextStyle14.copyWith(
                      color: const Color(0xffA1A1AA),
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
