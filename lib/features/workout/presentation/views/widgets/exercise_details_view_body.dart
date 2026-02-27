import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class ExerciseDetailsViewBody extends StatelessWidget {
  const ExerciseDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onPressed: () {},
          widget: Text(
            'Exercise Details',
            style: Styles.mediumTextStyle18.copyWith(color: Color(0xffA1A1AA)),
          ),
          padding: EdgeInsets.zero,
        ),
        CustomImage(),
      ],
    );
  }
}