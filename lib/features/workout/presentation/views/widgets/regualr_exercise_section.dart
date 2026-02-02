import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/core/manager/workout_cubit/workout_cubit.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/custom_progress_indicator.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/workout_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class RegularExerciseSection extends StatefulWidget {
  const RegularExerciseSection({super.key});

  @override
  State<RegularExerciseSection> createState() => _RegularExerciseSectionState();
}

class _RegularExerciseSectionState extends State<RegularExerciseSection> {
  late TextEditingController excersiceController;
  @override
  void initState() {
    super.initState();
    excersiceController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final workoutCubit = context.read<WorkoutCubit>();
    return Column(
      children: [
        CustomInputWidget(
          padding: EdgeInsets.zero,
          style: Styles.mediumTextStyle20,
          labelText: 'Regular exercise',
          textField: CustomTextFormField(
            controller: excersiceController,
            color: const Color(0xff52525B),
            borderColor: const Color(0xff52525B),
            hintText: 'Enter a title for the exercise',
            style: Styles.regularTextStyle14.copyWith(
              color: const Color(0xffC6C6C6),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const Text('Set Goal', style: Styles.mediumTextStyle14),
            const SizedBox(width: 8),
            SvgPicture.asset(whatIcon, height: 16, width: 16),
          ],
        ),
        const SizedBox(height: 6),
        CustomTextFormField(
          borderColor: const Color(0xff52525B),
          color: Colors.transparent,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down,
              size: 24,
              color: Color(0xffA1A1AA),
            ),
          ),
          hintText: '2 months',
          style: Styles.regularTextStyle14.copyWith(
            color: const Color(0xffC6C6C6),
          ),
        ),
        const SizedBox(height: 30),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: MediaQuery.of(context).size.width * 0.07,
            crossAxisCount: 2,
          ),
          children: [
            WorkoutItem(
              boxname: 'Reps:',
              unit: 'reps',
              number: workoutCubit.reps,
              onTapCount: (currentCount) {
                workoutCubit.reps = currentCount;
              },
            ),
            WorkoutItem(
              boxname: 'Sets',
              unit: 'sets',
              number: workoutCubit.sets,
              onTapCount: (currentCount) {
                workoutCubit.sets = currentCount;
              },
            ),
            WorkoutItem(
              boxname: 'Weight',
              unit: 'lbs',
              number: workoutCubit.wight,
              onTapCount: (currentCount) {
                workoutCubit.wight = currentCount;
              },
            ),
            WorkoutItem(
              boxname: 'Rest timer:',
              unit: 's',
              number: workoutCubit.timer,
              onTapCount: (currentCount) {
                workoutCubit.timer = currentCount;
              },
            ),
          ],
        ),
        const SizedBox(height: 25),
        BlocConsumer<WorkoutCubit, WorkoutState>(
          listener: (context, state) {
            if (state is AddWorkoutSuccess) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Add Successful')));
            } else if (state is AddWorkoutFailure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.failureMessage)));
            }
          },
          builder: (context, state) {
            if (state is AddWorkoutLoading) {
              return CustomProgressIndicator();
            } else {
              return CustomButton(
                onTap: () {
                  workoutCubit.name = excersiceController.text;
                  workoutCubit.type = 'Main';
                  workoutCubit.addWokout();
                },
                text: 'Create workout',
                padding: EdgeInsets.zero,
              );
            }
          },
        ),
      ],
    );
  }
}
