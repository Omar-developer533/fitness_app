import 'package:fitness_app/core/manager/workout_cubit/workout_cubit.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/other_exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherExercisesSection extends StatelessWidget {
  const OtherExercisesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        if (state is GetWorkoutSuccess) {
          return SliverList.builder(
            itemCount: state.exercises.length,
            itemBuilder: (context, index) {
              return OtherExerciseCard(exercise: state.exercises[index]);
            },
          );
        } else if (state is GetWorkoutFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.failureMessage)),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
