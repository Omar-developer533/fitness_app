import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/create_exercise_custom_button.dart';
import 'package:flutter/material.dart';

class CreatePalnEndSection extends StatelessWidget {
  const CreatePalnEndSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        CustomButton(text: 'Create Plan', padding: EdgeInsets.zero),
        SizedBox(height: 20),
        CreateExerciseCustomButon(),
        SizedBox(height: 50),
      ],
    );
  }
}
