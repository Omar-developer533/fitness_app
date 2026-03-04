import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/workout/presentation/manager/cubits/exercises_list_cubit/exercise_list_cubit.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercises_list.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/filtering_exercises.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseListViewBody extends StatelessWidget {
  const ExerciseListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 25),
                const ExerciseAppBar(),
                // const NetworkStateBanner(child: SizedBox()),
                const SizedBox(height: 10),
                CustomTextFormField(
                  hintText: 'Search Exercise',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(height: 20),
                const FilteringExercise(),
                const SizedBox(height: 35),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Results :', style: Styles.mediumTextStyle18),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          BlocBuilder<ExerciseListCubit, ExercisesListState>(
            builder: (context, state) {
              if (state is GetExercisesListFailure) {
                return SliverToBoxAdapter(
                  child: Center(child: Text(state.errorMessage)),
                );
              } else if (state is GetExercisesListSuccess) {
                return ExercisesList(exercises: state.exercises);
              } else {
                return const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(color: buttonColorStart),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
