import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/manager/cubits/cubit/exercise_type_cubit.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_type.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/regualr_exercise_section.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/super_set_exercise_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateExerciseViewBody extends StatefulWidget {
  const CreateExerciseViewBody({super.key});

  @override
  State<CreateExerciseViewBody> createState() => _CreateExerciseViewBodyState();
}

class _CreateExerciseViewBodyState extends State<CreateExerciseViewBody> {
  @override
  Widget build(BuildContext context) {
    var exerciseCubit = BlocProvider.of<ExerciseTypeCubit>(context);
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
                isPressed: exerciseCubit.warmUpPress,
                onTap: () {
                  exerciseCubit.warmUpPress = true;
                  exerciseCubit.coolDownPress = false;
                  exerciseCubit.mainIsPress = false;
                  exerciseCubit.exerciseType();

                  setState(() {});
                },
              ),
              ExerciseType(
                exerciseName: 'Main',
                icon: Icons.access_time_filled_rounded,
                isPressed: exerciseCubit.mainIsPress,
                onTap: () {
                  exerciseCubit.mainIsPress = true;
                  exerciseCubit.coolDownPress = false;
                  exerciseCubit.warmUpPress = false;
                  setState(() {});
                },
              ),
              ExerciseType(
                exerciseName: 'Cool Down',
                icon: Icons.pie_chart,
                isPressed: exerciseCubit.coolDownPress,
                onTap: () {
                  exerciseCubit.coolDownPress = true;
                  exerciseCubit.warmUpPress = false;
                  exerciseCubit.mainIsPress = false;
                  exerciseCubit.exerciseType();

                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(height: 35),

          BlocBuilder<ExerciseTypeCubit, ExerciseTypeState>(
            builder: (context, state) {
              if (state is ExerciseTypeRegular) {
                return const RegularExerciseSection();
              } else {
                return const SuperSetExerciseSection();
              }
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
