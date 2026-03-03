import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_type.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePalnTopSection extends StatelessWidget {
  const CreatePalnTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        CustomAppBar(
          padding: EdgeInsets.zero,
          onPressed: () {
            GoRouter.of(context).pop();
          },
          widget: Text(
            'Create Plan',
            style: Styles.mediumTextStyle18.copyWith(
              color: const Color(0xffA1A1AA),
            ),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ExerciseType(
              exerciseName: 'Warm up',
              icon: Icons.autorenew,
              isPressed: false,
              onTap: () {},
            ),
            ExerciseType(
              exerciseName: 'Main',
              icon: Icons.access_time_filled_rounded,
              isPressed: false,
              onTap: () {},
            ),
            ExerciseType(
              exerciseName: 'Cool Down',
              icon: Icons.pie_chart,
              isPressed: true,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 25),
        CustomInputWidget(
          padding: EdgeInsets.zero,
          style: Styles.mediumTextStyle16,
          labelText: 'Exercise',
          textField: CustomTextFormField(
            color: const Color(0xff52525B),
            borderColor: const Color(0xff52525B),
            hintText: 'Enter a title for the exercise',
            style: Styles.regularTextStyle14.copyWith(
              color: const Color(0xffC6C6C6),
            ),
          ),
        ),
      ],
    );
  }
}
