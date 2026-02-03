import 'package:fitness_app/core/manager/workout_cubit/workout_cubit.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/create_plan_end_section.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/create_plan_top_section.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/main_exercises_section.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/other_exercises_section.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePlanViewBody extends StatefulWidget {
  const CreatePlanViewBody({super.key});

  @override
  State<CreatePlanViewBody> createState() => _CreatePlanViewBodyState();
}

class _CreatePlanViewBodyState extends State<CreatePlanViewBody> {
  @override
  void initState() {
    BlocProvider.of<WorkoutCubit>(context).getWorkouts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CreatePalnTopSection()),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Main exercise', style: Styles.mediumTextStyle20),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          MainExercisesSection(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                Divider(thickness: 1, color: Color(0xff7F7F7F)),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Other exercises',
                    style: Styles.semiBoldTextStyle20,
                  ),
                ),
                SizedBox(height: 10),
                CustomSearchBar(),
                SizedBox(height: 20),
              
               
              ],
            ),
          ),  OtherExercisesSection(),
        SliverToBoxAdapter(child: CreatePalnEndSection()), ],
      ),
    );
  }
}
