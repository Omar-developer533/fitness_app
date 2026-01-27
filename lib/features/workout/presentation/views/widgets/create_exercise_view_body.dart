import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_type.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/super_set_exercise_section.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/workout_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CreateExerciseViewBody extends StatefulWidget {
  const CreateExerciseViewBody({super.key});

  @override
  State<CreateExerciseViewBody> createState() => _CreateExerciseViewBodyState();
}

class _CreateExerciseViewBodyState extends State<CreateExerciseViewBody> {
  bool buttonOneIssPressed = true;
  bool buttontowIssPressed = false;
  bool buttonThreeeIssPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 25),
          CustomAppBar(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            widget: Text(
              'Create Exercise',
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
                isPressed: buttonOneIssPressed,
                onTap: () {
                  buttonOneIssPressed = true;
                  buttontowIssPressed = false;
                  buttonThreeeIssPressed = false;
                  setState(() {});
                },
              ),
              ExerciseType(
                exerciseName: 'Main',
                icon: Icons.access_time_filled_rounded,
                isPressed: buttontowIssPressed,
                onTap: () {
                  buttontowIssPressed = true;
                  buttonOneIssPressed = false;
                  buttonThreeeIssPressed = false;
                  setState(() {});
                },
              ),
              ExerciseType(
                exerciseName: 'Cool Down',
                icon: Icons.pie_chart,
                isPressed: buttonThreeeIssPressed,
                onTap: () {
                  buttonThreeeIssPressed = true;
                  buttontowIssPressed = false;
                  buttonOneIssPressed = false;
                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(height: 35),

          const SuperSetExerciseSection(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
