import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_app_bar.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_list_view_item.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/filtering_exercises.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/network_state_banner.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: 10),
                CustomTextFormField(
                  hintText: 'Search Exercise',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(height: 20),
                FilteringExercise(),
                SizedBox(height: 35),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Results :', style: Styles.mediumTextStyle18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(child: ExercisesList()),
        ],
      ),
    );
  }
}

class ExercisesList extends StatelessWidget {
  const ExercisesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ExerciseListViewItem(),
        );
      },
    );
  }
}
