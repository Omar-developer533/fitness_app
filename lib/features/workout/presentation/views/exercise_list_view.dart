import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_list_view_body.dart';
import 'package:flutter/material.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: AppGradientBackground(child: ExerciseListViewBody()),
      ),
    );
  }
}
