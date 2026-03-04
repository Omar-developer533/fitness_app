import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_details_view_body.dart';
import 'package:flutter/material.dart';

class ExerciseDetailsView extends StatelessWidget {
  const ExerciseDetailsView({super.key, required this.exercise});
  final ExerciseModel exercise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: AppGradientBackground(
          child: ExerciseDetailsViewBody(exercise: exercise),
        ),
      ),
    );
  }
}
