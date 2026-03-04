import 'package:fitness_app/core/utls/app_router.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExercisesList extends StatelessWidget {
  const ExercisesList({super.key, required this.exercises});
  final List<ExerciseModel> exercises;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(
                context,
              ).push(AppRouter.kExerciseDetailsView, extra: exercises[index]);
            },
            child: ExerciseListViewItem(exercise: exercises[index]),
          ),
        );
      },
    );
  }
}
