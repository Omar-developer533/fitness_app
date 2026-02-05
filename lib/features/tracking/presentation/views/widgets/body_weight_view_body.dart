import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/tracking/presentation/manager/cubits/weight/weight_cubit.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/add_items.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/calender.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/custom_bar_chart.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/weight_adding_card.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/weight_goal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BodyWeightViewBody extends StatefulWidget {
  const BodyWeightViewBody({super.key});

  @override
  State<BodyWeightViewBody> createState() => _BodyWeightViewBodyState();
}

class _BodyWeightViewBodyState extends State<BodyWeightViewBody> {
  @override
  void initState() {
    BlocProvider.of<WeightCubit>(context).getWeight();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 25),
            CustomAppBar(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Body weight',
                style: Styles.mediumTextStyle18.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Calender(),
            const SizedBox(height: 25),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
              child: const CustomBarChart(),
            ),
            const SizedBox(height: 15),
            const WeightGoalCard(),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Weekly weight log', style: Styles.mediumTextStyle16),
            ),
            const SizedBox(height: 10),
            const AddItems(text: 'Add new weight'),
            const SizedBox(height: 15),
            BlocBuilder<WeightCubit, WeightState>(
              builder: (context, state) {
                if (state is GetWeightSuccess) {
                  return Column(
                    verticalDirection: VerticalDirection.up,
                    children: List.generate(state.weights.length, (index) {
                      return WeightAddingCard(
                        weekNumber: (index + 1).toString(),
                        weight: state.weights[index],
                        onPressed: () {},
                      );
                    }),
                  );
                } else if (state is GetWeightFailure) {
                  return Center(child: Text(state.failureMessage));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(color: buttonColorStart),
                  );
                }
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
