import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_liner_progress_indicator.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/new_plan_button.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_search_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_switch_button.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/workout_card_edit.dart';
import 'package:flutter/material.dart';

class GoalViewBody extends StatelessWidget {
  const GoalViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Center(
                child: Text(
                  'Goal',
                  style: Styles.mediumTextStyle18.copyWith(
                    color: const Color(0xffA1A1AA),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomLinerProgressIndicator(),
              ),
              const SizedBox(height: 16),
              const CustomSwitchButton(),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: NewPLanButton(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomSearchBar(),
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
        const WorkoutCardListView(),
      ],
    );
  }
}

class WorkoutCardListView extends StatelessWidget {
  const WorkoutCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: WorkoutCardEdit(title: 'Push ups'),
        );
      },
    );
  }
}
