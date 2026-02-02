import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/workout/data/repos/wourkout_repo.dart';
import 'package:fitness_app/core/manager/workout_cubit/workout_cubit.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/create_exercise_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatExerciseView extends StatelessWidget {
  const CreatExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorkoutCubit(WourkoutRepoImpl()),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: AppGradientBackground(child: CreateExerciseViewBody()),
        ),
      ),
    );
  }
}
