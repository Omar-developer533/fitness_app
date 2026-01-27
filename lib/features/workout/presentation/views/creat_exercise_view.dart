import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/create_exercise_view_body.dart';
import 'package:flutter/material.dart';

class CreatExerciseView extends StatelessWidget {
  const CreatExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: AppGradientBackground(child: CreateExerciseViewBody()),
      ),
    );
  }
}
