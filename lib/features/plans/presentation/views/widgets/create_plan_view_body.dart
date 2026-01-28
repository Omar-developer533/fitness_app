import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/create_exercise_custom_button.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/main_exercise_card.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/other_exercise_card.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_search_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_type.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePlanViewBody extends StatelessWidget {
  const CreatePlanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
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
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Main exercise', style: Styles.mediumTextStyle20),
            ),
            const SizedBox(height: 15),
            const MainExerciseCard(title: 'Push ups'),
            const MainExerciseCard(title: 'Push ups'),
            const MainExerciseCard(title: 'Push ups'),
            const SizedBox(height: 10),
            const Divider(thickness: 1, color: Color(0xff7F7F7F)),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Other exercises', style: Styles.semiBoldTextStyle20),
            ),
            const SizedBox(height: 10),
            const CustomSearchBar(),
            const SizedBox(height: 20),
            const OtherExerciseCard(title: 'Push ups'),
            const OtherExerciseCard(title: 'Push ups'),
            const OtherExerciseCard(title: 'Push ups'),
            const OtherExerciseCard(title: 'Push ups'),
            const SizedBox(height: 40),
            const CustomButton(text: 'Create Plan', padding: EdgeInsets.zero),
            const SizedBox(height: 20),
            const CreateExerciseCustomButon(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
